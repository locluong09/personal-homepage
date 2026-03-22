Navier-Stokes equation
2026-Mar-10
N-S, fluid mechanics
-----

I have been interested in the topic of turbulence for years since I started my PhD in 2021. This topic is, for sure, very broad; and advancements (e.g., in theoretical development, experimental data, computational/numerical methods, or engineering applications) have been made gradually since the inception of the Navier-Stokes equation (I'd prefer using the vector form, hence, a singular equation of the Navier-Stokes equations) in the midst of the 19th century. There are probably many ways to derive this famous equation, and I knew two ways to arrive at the final equation. In the book of David Jon Furbish (Fluid Physics in Geology), it was derived by listing all the forces acting on the fluid parcel, then using Taylor's series expansion to analyze the force balance, and Newton's second law of motion to connect all force components into the final equation. I will try to derive it slightly different here, using the integral form rather than the differential form.

The turbulence is famously considered as the biggest unsolved problem the classical physics, as well as the existence of a smooth solution to the Navier-Stokes equation is one of the millennium unsolved problem in mathematics. As I want to understand a little bit (maybe just a tiny bit) of why it is the case, I'd like to derive this equation from scratch, in a way as rigorous as possible, from both the mathematical and physical perspectives.

First of all, I think we need to dig a bit deeper on the continuum hypothesis. Even though a gas or a fluid (e.g., water, air), is made of molecules, and of course, is discrete by nature. However, on the macroscopic scale (the length scale is much large than mean free path of individual molecules), we can assume they are perfectly continuous in structure; and the physical quantities (e.g., pressure, temperature, momentum) of a macroscopic fluid element will be regarded uniform distribution (spread uniformly) over that element. 

According the kinetic theory of gas, pressure comes from collisions of gas molecules with the walls. The pressure we can measure is the result of momentum transfer of billions of molecules or atoms that fly and hit the wall and bounce. On the other hand, this is quite different for liquids. Because in a liquid, molecules are densely packed, so the dominance is the intermolecular (attractive and repulsive) forces between them. The repulsive forces is the winner here, and results in the macroscopic pressure. Anyway, in either gases or liquids, the macroscopic or bulk properties (e.g., temperature, pressure, density) are the results of ensemble average of interactions of billions of molecules. 

In statistical and continuum mechanics, it is useful to define a representative elementary volume (REV), on which, the macroscopic properties are statistically meaningful and independent of the size of that volume. In this sense, macroscopic properties emerge as the average over microscopic behaviors and interactions. And there is ample evidence for the validity of this continuum assumption. For instance, measurements of river flow or air temperature are continuous and smooth with usual physical devices.

Assuming a fluid element $V$, with arbitrary shape (not necessarily a cube shape), we can write down the momentum equation (or the Newton's second law) for this fluid element (satisfied the REV definition):

$$
\frac{d}{dt}\Big(\int_{V}\rho \mathbf{u}_L dV\Big) = \sum \mathbf{F}
$$

This equation is written on the the Lagrangian viewpoint, where we follow this fluid element. On this description, we can put a local coordinate attached into this element to track the trajectory over time. Therefore:

$$
\mathbf{u}_L(\mathbf{x},t) = \frac{d\mathbf{x}}{dt}\Big|\_{\mathbf{L} \text{fixed coordinates}} = (\frac{\partial x}{\partial t}, \frac{\partial y}{\partial t}, \frac{\partial z}{\partial t})
$$

On the left hand side is the derivative of the momentum of this fluid element, which represents a sum of all individual molecule's momentum in this fluid element; and on the right side the sum of forces acting on this element. There are two type of forces acting on fluid: body force, and surface force.

To transform the equation onto the Eulerian viewpoint or description, it think it is more intuitive to write down the full parametric form of the position vector.

$$
\mathbf{u}_L(\mathbf{x},t) = \mathbf{u}_E(\mathbf{X}(\mathbf{x},t), t) = \mathbf{u}
$$

This means we should be able to establish a vector field $\mathbf{u}$ such that it can generate a flow map, which is at least 1 to 1 (is this necessary? I don know), so that each fluid particle in the Lagrangian description corresponding to a unique position in the the Eulerian space, where the velocity magnitude--of the vector field at this particular position--is identical with the particle velocity in the Lagrangian space. To transform the description from the Lagrangian to Eulerian, we may apply the chain rule as shown below:

$$
\begin{split}
    A &= \pi r^2 \\
      &= \pi \times \text{radius}^2
\end{split}
$$

$$
\begin{split}
\frac{d}{dt}\Big(\int_{V}\rho \mathbf{u}_E dV\Big) &= \int_{V}\frac{d}{dt}(\rho \mathbf{u}_E dV)\\
&= \int_{V}\frac{d}{dt}(\rho \mathbf{u}) dV + \int_{V}\rho \mathbf{u}\frac{d}{dt}(dV)\\
&= \int_{V}\rho\frac{d}{dt}(\mathbf{u}) dV +\int_{V}\mathbf{u}\frac{d}{dt}(\rho)dV +  \int_{V}\rho \mathbf{u}\nabla\cdot\mathbf{u}\\
\end{split}
$$

