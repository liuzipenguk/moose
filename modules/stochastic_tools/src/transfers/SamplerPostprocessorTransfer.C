//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html

// StochasticTools includes
#include "SamplerPostprocessorTransfer.h"
#include "SamplerMultiApp.h"
#include "SamplerReceiver.h"
#include "StochasticResults.h"

registerMooseObject("StochasticToolsApp", SamplerPostprocessorTransfer);

template <>
InputParameters
validParams<SamplerPostprocessorTransfer>()
{
  InputParameters params = validParams<MultiAppVectorPostprocessorTransfer>();
  params.addClassDescription("Transfers data to and from Postprocessors on the sub-application.");
  params.set<MooseEnum>("direction") = "from_multiapp";
  params.set<std::string>("vector_name") = "";
  params.suppressParameter<MooseEnum>("direction");
  params.suppressParameter<std::string>("vector_name");
  return params;
}

SamplerPostprocessorTransfer::SamplerPostprocessorTransfer(const InputParameters & parameters)
  : MultiAppVectorPostprocessorTransfer(parameters),
    _sampler_multi_app(std::dynamic_pointer_cast<SamplerMultiApp>(_multi_app).get()),
    _sampler(_sampler_multi_app->getSampler())
{
  if (!_sampler_multi_app)
    mooseError("The 'multi_app' must be a 'SamplerMultiApp.'");
}

void
SamplerPostprocessorTransfer::initialSetup()
{
  auto & uo = _fe_problem.getUserObject<UserObject>(_master_vpp_name);
  _results = dynamic_cast<StochasticResults *>(&uo);

  if (!_results)
    mooseError("The 'results' object must be a 'StochasticResults' object.");

  _results->init(_sampler);
}

void
SamplerPostprocessorTransfer::executeFromMultiapp()
{
  // Number of PP is equal to the number of MultiApps
  const unsigned int n = _multi_app->numGlobalApps();

  // Collect the PP values for this processor
  std::vector<PostprocessorValue> values;
  values.reserve(_multi_app->numLocalApps());
  for (unsigned int i = 0; i < n; i++)
  {
    if (_multi_app->hasLocalApp(i))
    {
      FEProblemBase & app_problem = _multi_app->appProblemBase(i);

      // use reserve and push_back b/c access to FEProblemBase is based on global id
      values.push_back(app_problem.getPostprocessorValue(_sub_pp_name));
    }
  }

  // Gather the PP values from all ranks
  _communicator.allgather<PostprocessorValue>(values);

  // Update VPP
  for (unsigned int i = 0; i < n; i++)
  {
    Sampler::Location loc = _sampler.getLocation(i);
    VectorPostprocessorValue & vpp = _results->getVectorPostprocessorValueByGroup(loc.sample());
    vpp[loc.row()] = values[i];
  }
}
