/****************************************************************/
/* MOOSE - Multiphysics Object Oriented Simulation Environment  */
/*                                                              */
/*          All contents are licensed under LGPL V2.1           */
/*             See LICENSE for full restrictions                */
/****************************************************************/

#include "PorousFlowDesorpedMassVolumetricExpansion.h"

template<>
InputParameters validParams<PorousFlowDesorpedMassVolumetricExpansion>()
{
  InputParameters params = validParams<TimeKernel>();
  params.addRequiredParam<UserObjectName>("PorousFlowDictator", "The UserObject that holds the list of Porous-Flow variable names.");
  params.addRequiredCoupledVar("conc_var", "The variable that represents the concentration of desorped species");
  params.addClassDescription("Desorped_mass * rate_of_solid_volumetric_expansion");
  return params;
}

PorousFlowDesorpedMassVolumetricExpansion::PorousFlowDesorpedMassVolumetricExpansion(const InputParameters & parameters) :
    TimeKernel(parameters),
    _dictator(getUserObject<PorousFlowDictator>("PorousFlowDictator")),
    _conc_var_number(coupled("conc_var")),
    _conc(coupledValue("conc_var")),
    _porosity(getMaterialProperty<Real>("PorousFlow_porosity_qp")),
    _dporosity_dvar(getMaterialProperty<std::vector<Real> >("dPorousFlow_porosity_qp_dvar")),
    _dporosity_dgradvar(getMaterialProperty<std::vector<RealGradient> >("dPorousFlow_porosity_qp_dgradvar")),
    _strain_rate_qp(getMaterialProperty<Real>("PorousFlow_volumetric_strain_rate_qp")),
    _dstrain_rate_qp_dvar(getMaterialProperty<std::vector<RealGradient> >("dPorousFlow_volumetric_strain_rate_qp_dvar"))
{
}

Real
PorousFlowDesorpedMassVolumetricExpansion::computeQpResidual()
{
  return _test[_i][_qp] * (1.0 - _porosity[_qp]) * _conc[_qp] * _strain_rate_qp[_qp];
}

Real
PorousFlowDesorpedMassVolumetricExpansion::computeQpJacobian()
{
  return computeQpJac(_var.number());
}

Real
PorousFlowDesorpedMassVolumetricExpansion::computeQpOffDiagJacobian(unsigned int jvar)
{
  return computeQpJac(jvar);
}

Real
PorousFlowDesorpedMassVolumetricExpansion::computeQpJac(unsigned int jvar)
{
  Real deriv = 0.0;

  if (jvar == _conc_var_number)
    deriv = (1.0 - _porosity[_qp]) * _phi[_j][_qp] * _strain_rate_qp[_qp];

  if (_dictator.notPorousFlowVariable(jvar))
    return _test[_i][_qp] * deriv;
  const unsigned int pvar = _dictator.porousFlowVariableNum(jvar);

  deriv -= _dporosity_dgradvar[_qp][pvar] * _grad_phi[_j][_qp] * _conc[_qp] * _strain_rate_qp[_qp];
  deriv -= _dporosity_dvar[_qp][pvar] * _phi[_j][_qp] * _conc[_qp] * _strain_rate_qp[_qp];
  deriv += (1.0 - _porosity[_qp]) * _conc[_qp] * _dstrain_rate_qp_dvar[_qp][pvar] * _grad_phi[_j][_qp];

  return _test[_i][_qp] * deriv;
}