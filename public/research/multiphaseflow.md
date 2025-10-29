Multiphase flow simulation
2020-Feb-27
multiphase flow, reservoir simulation, oil and gas
-----

I implemented a 2D reservoir simulator in Matlab, Python, and Julia to handle different fluid compositions (oil, gas, and water). For single-phase oil and water cases, the governing equation is linear, so the discretized system can be solved directly using Matlab’s backslash operator or a standard linear solver in Python. For single-phase gas reservoirs and multiphase flow, the governing equations are nonlinear; therefore, I employed the Newton–Raphson method to solve the resulting system.

You can see this [GitHub repository](https://github.com/locluong09/ReservoirSimulation) for some results as well as detailed implementation.
