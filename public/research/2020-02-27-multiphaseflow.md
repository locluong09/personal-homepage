Multiphase flow simulation
2020-Feb-27
multiphase flow, reservoir simulation, computational modeling
-----

I used to study petroleum engineering as an undergraduate in Vietnam. During that time, I was introduced to numerical reservoir simulation, where the flow of oil, gas, and water can be simulated efficiently using computer codes, people I knew always want to call these simulators or computer codes a “black box.” As I was curious about what happens under the hook of this “black box”, and how the simulations are actually constructed, I started exploring the underlying mathematical models and numerical methods as well as some aspects of computational modelling (e.g., algorithms, parallel computing). This curiosity eventually led me to study a Master in the US. I was quite happy that, after my Master, I've grabbed a solid understanding of reservoir simulation as well as numerical methods in general.

I implemented a 2D reservoir simulator in Matlab, Python, and Julia to handle different fluid compositions (oil, gas, and water). For single-phase oil and water cases, the governing equation is linear, so the discretized system can be solved directly using Matlab’s backslash operator or a standard linear solver in Python. For single-phase gas reservoirs and multiphase flow, the governing equations are nonlinear; therefore, I employed the Newton–Raphson method to solve the non-linear system.

You can see this [GitHub repository](https://github.com/locluong09/ReservoirSimulation) for some results as well as detailed implementation.
