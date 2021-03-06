# {{project}} System Requirements and Traceability Matrix

## Introduction id=introduction

!template! field key=minimum_requirements
1. The software requirements shall include technical requirements including operating system,
   function, interfaces, performance, and security requirements, installation considerations, design
   inputs, and any design constraints.
1. Identify applicable reference drawings, specifications, codes, standards, regulations, procedures,
   or instructions that establish software requirement test, inspection, and acceptance criteria.
1. Software requirements shall be traceable throughout the life cycle.
1. Security requirements shall be specified commensurate with the risk from unauthorized access or
   use.

The software test plan as part of the requirements traceability matrix document must include, as
applicable:

1. Required tests and test sequence.
1. Required ranges of input parameters.
1. Identification of stages when testing is required.
1. Criteria for establishing test cases.
1. Requirements for testing logic branches.
1. Requirements for hardware integration.
1. Expected results.
1. Acceptance criteria.
1. Reports, records, standard formatting, and conventions.
1. Disposition unexpected results. Performance of system test is by personnel other than the
   development staff.

!alert! note
Software test records shall include:

1. Computer program tested and support software used
1. Computer hardware used
1. Test equipment and calibrations, where applicable
1. Date of test
1. Tester or data recorder
1. Simulation models used, where applicable
1. Test problems. Results and applicability
1. Action taken in connection with any deviations
1. Person evaluating the test results 11. Customer approval.
!alert-end!
!template-end!

### System Purpose id=system-purpose

!template field key=system-purpose
Summarize the reason(s) for the system being developed or modified.

### System Scope id=system-scope

!template! field key=system-scope
Delineate the following:

1. Identify the product(s) to be produced by name (Network Infrastructure, Host DBMS, Report
   Generator, HPC Server, etc.)
1. Explain what the product(s) will, and, if necessary, will not do
1. Describe the application of the product being specified, including relevant benefits, objectives,
   and goals.

!alert note
Be consistent with similar statements in higher level specifications (e.g., business requirements
specification).
!template-end!

### Assumptions and Dependencies id=assumptions-and-dependencies

!template field key=assumptions-and-dependencies
List each of the factors that affect the requirements and should be taken into consideration for
derivation of lower level requirements and design. These factors should include design inputs, design
constraints, and installation considerations. Changes to these can affect the requirements in the
specification. For example, an assumption may be that a specific operating system will be available
on the hardware designated for the product. If, in fact, the operating system is not available, the
specification would then have to change accordingly.

### Pre-test Instructions/Environment/Setup id=pre-test

!template! field key=pre-test
Provide a clear description of the test environment and any required instructions for setup. This
includes:

- Pre-test environment and setup requirements including computer hardware and system software used
- How the test data is created and required ranges for input parameters
- How the test case is executed (i.e., manual/automated tool)
- The steps to validate the test result including any acceptance criteria.
!template-end!

## System Requirements id=system-requirements

### Requirements Traceability Matrix id=requirements-traceability-matrix

!template! field key=requirements-traceability-matrix
This section of the specification should contain all of the requirements to a level of detail
sufficient to enable designers to design a system to satisfy those requirements, and testers to test
that the system satisfies those requirements. Be sure to define the system security
requirements. Examples of such requirements are data privacy, user access, user privilege, export
control, system configuration, event logging and communications.

1. Requirements must be stated in the form to be:
  - Correct
  - Unambiguous
  - Complete
  - Consistent
  - Verifiable
  - Traceable.
1. Requirements must be uniquely identifiable.
1. Requirements should be cross-referenced to earlier documents that relate (e.g., business
   requirements).
1. Careful attention should be given to organizing the requirements to maximize readability.
1. Requirements should address functionality, usability, performance, system interfaces, reliability,
   and security.
!template-end!

