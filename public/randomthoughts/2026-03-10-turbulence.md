Navier-Stokes equation
2026-Mar-10
N-S, fluid mechanics
-----

I have been interested in the topic of turbulence for years since I started my PhD in 2021. This topic is, for sure, very broad; and advancements (e.g., in theoretical development, experimental data, computational/numerical methods, or engineering applications) have been made gradually since the inception of the Navier-Stokes equation (I'd prefer using the vector form, hence, a singular equation of the Navier-Stokes equations) in the midst of the 19th century. There are probably many ways to derive this famous equation, and I knew two ways to arrive at the final equation. In the book of David Jon Furbish (Fluid Physics in Geology), it was derived by listing all the forces acting on the fluid parcel, then using Taylor's series expansion to analyze the force balance, and Newton's second law of motion to connect all force components into the final equation. I will try to derive it slightly different here, using the integral form rather than the differential form.

The onset of turbulence or Navier-Stokes equation is famously marked as the biggest unsolved problem the classical physics. As I want to understand why it is, I'd like to derive this equation from scratch in a rigorous manner of maths and physics.

Assuming a fluid element $ V$, with arbitrary shape (not necessarily a cube shape), we can write down the momentum equation (or the Newton's second law) for this fluid element:

$$
\frac{d}{dt}\Big(\int_{V}\rho \mathbf{u} dV\Big) = \sum \mathbf{F}
$$

