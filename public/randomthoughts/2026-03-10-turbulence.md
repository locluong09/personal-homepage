Navier-Stokes equation
2026-Mar-10
N-S, fluid mechanics
-----

I have been interested in the topic of turbulence for years since I started my PhD in 2021. This topic is, for sure, very broad; and advancements (e.g., in theoretical development, experimental data, computational/numerical methods, or engineering applications) have been made gradually since the inception of the Navier-Stokes equation (I'd prefer using the vector form, hence, a singular equation of the Navier-Stokes equations) in the midst of the 19th century. There are probably many ways to derive this famous equation, and I knew two ways to arrive at the final equation. In the book of David Jon Furbish (Fluid Physics in Geology), it was derived by listing all the forces acting on the fluid parcel, then using Taylor's series expansion to analyze the force balance, and Newton's second law of motion to connect all force components into the final equation. I will try to derive it slightly different here, using the integral form rather than the differential form.

The turbulence is famously considered as the biggest unsolved problem the classical physics, as well as the existence of a smooth solution to the Navier-Stokes equation is one of the millennium unsolved problem in mathematics. As I want to understand a little bit (maybe just a tiny bit) of why it is the case, I'd like to derive this equation from scratch, in a way as rigorous as possible, from both the mathematical and physical perspectives.

First of all, I think we need to dig a bit deeper on the continuum hypothesis. Even though a gas or a fluid (e.g., water, air), is made of molecules, and of course, is discrete by nature. However, on the macroscopic scale (the length scale is much large than mean free path of individual molecules), we can assume they are perfectly continuous in structure; and the physical quantities (e.g., pressure, temperature, momentum) of a macroscopic fluid element will be regarded uniform distribution (spread uniformly) over that element. 

According the kinetic theory of gas, pressure comes from collisions of gas molecules with the walls. The pressure we can measure is the result of momentum transfer of billions of molecules or atoms that fly and hit the wall and bounce. On the other hand, this is quite different for liquids. Because in a liquid, molecules are densely packed, so the dominance is the intermolecular (attractive and repulsive) forces between them. The repulsive forces is the winner here, and results in the macroscopic pressure. Anyway, in either gases or liquids, the macroscopic or bulk properties (e.g., temperature, pressure, density) are the results of ensemble average of interactions of billions of molecules. 

In statistical and continuum mechanics, it is useful to define a representative elementary volume (REV), on which, the macroscopic properties are statistically meaningful and independent of the size of that volume. In this sense, macroscopic properties emerge as the average over microscopic behaviors and interactions. And there is ample evidence for the validity of this continuum assumption. For instance, measurements of river flow or air temperature are continuous and smooth with usual physical devices.


Assuming a fluid element $V$, with arbitrary shape (not necessarily a cube shape), we can write down the momentum equation (or the Newton's second law) for this fluid element:

$$
\frac{d}{dt}\Big(\int_{V}\rho \mathbf{u} dV\Big) = \sum \mathbf{F}
$$

On the left hand side is the sum of all individual molecule's momentum in the fluid element, and on the right side the sum of forces acting on this element. There are two type of forces: body force, and surface force.

