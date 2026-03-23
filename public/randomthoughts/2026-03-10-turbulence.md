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

On the left hand side is the derivative of the momentum of this fluid element, which represents a sum of all individual molecule's momentum in this fluid element; and on the right side the sum of forces acting on this element. There are two type of forces acting on fluid: body force, and surface force. This equation is written on the the Lagrangian viewpoint, where we follow this fluid element. On this description, we can put a local coordinate attached into this element to track the trajectory over time. Therefore:

$$
\mathbf{u}_L(\mathbf{x},t) = \frac{d\mathbf{x}}{dt}\bigg|\_{\mathbf{L}\;\;\text{(fixed coordinates)}} = (\frac{\partial x}{\partial t}, \frac{\partial y}{\partial t}, \frac{\partial z}{\partial t})
$$

To transform the equation onto the Eulerian viewpoint or description, it think it is more intuitive to write down the full parametric form of the position vector.

$$
\mathbf{u}_L(\mathbf{x},t) = \mathbf{u}_E(\mathbf{X}(\mathbf{x},t), t) = \mathbf{u}
$$

This means we should be able to establish a vector field $\mathbf{u}$ such that it can generate a flow map, which is at least 1 to 1 (is this necessary? I don know), so that each fluid particle in the Lagrangian description corresponding to a unique position in the the Eulerian space, where the velocity magnitude--of the vector field at this particular position--is identical with the particle velocity in the Lagrangian space. To transform the description from the Lagrangian to Eulerian, we may apply the Reynolds transport theorem (RTT) to a time-dependent fluid element as shown below:

$$
\frac{d}{dt}\Big(\int\_{V(t)}\rho \mathbf{u}_E dV\Big) = \int\_{V(t)}\frac{\partial }{\partial t}(\rho \mathbf{u}_E) dV + \int\_{S(t)}\rho \mathbf{u}_E(\mathbf{u}_E\cdot\hat{\mathbf{n}}) dS
$$

Applying Gauss divergence theorem to the second term of the right hand side:

$$
\int\_{S(t)}\rho \mathbf{u}(\mathbf{u}\cdot\hat{\mathbf{n}}) dS = \int\_{V(t)}\rho\mathbf{u}(\nabla\cdot\mathbf{u}) dV
$$

Applying the chain rule for the first term:

$$
\int\_{V(t)}\frac{\partial }{\partial t}(\rho \mathbf{u}) dV = \int\_{V(t)}\rho \frac{\partial\mathbf{u}}{\partial t} dV + \int\_{V(t)}\mathbf{u}\frac{\partial \rho}{\partial t} dV
$$

Because the frame of reference  in the Eulerian description is fixed in space--we observed the fluid flow at fixed points ($x$, $y$, $z$)--we can apply the chain rule again:

$$
\frac{\partial\mathbf{u}}{\partial t}\bigg|\_{\mathbf{E}\;\;\text{(fixed coordinates)}} = \frac{\partial\mathbf{u}}{\partial t} + \frac{\partial\mathbf{u}}{\partial \mathbf{X}} \frac{\partial\mathbf{X}}{\partial \mathbf{x}}\frac{\partial\mathbf{x}}{\partial t}
$$

$$
\frac{\partial\mathbf{\rho}}{\partial t}\bigg|\_{\mathbf{E}\;\;\text{(fixed coordinates)}} = \frac{\partial\mathbf{\rho}}{\partial t} + \frac{\partial\mathbf{\rho}}{\partial \mathbf{X}} \frac{\partial\mathbf{X}}{\partial \mathbf{x}}\frac{\partial\mathbf{x}}{\partial t}
$$

Since $\rho$ is a scalar field, we can get:

$$
\frac{\partial\mathbf{\rho}}{\partial t}\bigg|\_{\mathbf{E}\;\;\text{(fixed coordinates)}} = \frac{\partial\mathbf{\rho}}{\partial t} + \mathbf{u}\cdot\nabla\rho
$$

Hence:

$$
\int\_{V(t)}\frac{\partial }{\partial t}(\rho \mathbf{u}) dV = \int\_{V(t)}\rho\Big(\frac{\partial\mathbf{u}}{\partial t} + \frac{\partial\mathbf{u}}{\partial \mathbf{X}} \frac{\partial\mathbf{X}}{\partial \mathbf{x}}\frac{\partial\mathbf{x}}{\partial t}\Big)dV +\\\\
\int\_{V(t)}\mathbf{u}\Big(\frac{\partial\mathbf{\rho}}{\partial t} + \mathbf{u}\cdot\nabla\rho \Big)dV + \int\_{V(t)}\rho\mathbf{u}(\nabla\cdot\mathbf{u}) dV
$$

We can use the conservation of mass of the continuity equation as:

$$
\int\_{V(t)}\mathbf{u}\Big(\frac{\partial\mathbf{\rho}}{\partial t} + \mathbf{u}\cdot\nabla\rho \Big)dV + \int\_{V(t)}\rho\mathbf{u}(\nabla\cdot\mathbf{u}) dV = \int\_{V(t)}\mathbf{u}\Big(\frac{\partial\mathbf{\rho}}{\partial t} + \mathbf{u}\cdot\nabla\rho + \rho\nabla\cdot\mathbf{u}\Big)dV = 0
$$

Thus:

$$
\int\_{V(t)}\frac{\partial }{\partial t}(\rho \mathbf{u}) dV = \int\_{V(t)}\rho\Big(\frac{\partial\mathbf{u}}{\partial t} + \frac{\partial\mathbf{u}}{\partial \mathbf{X}} \frac{\partial\mathbf{X}}{\partial \mathbf{x}}\frac{\partial\mathbf{x}}{\partial t}\Big)dV
$$

My argument is that if the Lagrangian frame of reference and the Eulerian fram of reference are only translational (no rotation), we can have:

$$
\frac{\partial\mathbf{X}}{\partial \mathbf{x}} = \mathbf{I}
$$

Therefore:

$$
\int\_{V(t)}\frac{\partial }{\partial t}(\rho \mathbf{u}) dV = \int\_{V(t)}\rho\Big(\frac{\partial\mathbf{u}}{\partial t} + (\mathbf{u}\cdot\nabla)\mathbf{u}\Big)dV
$$

In term of the material or total derivative:

$$
\int\_{V(t)}\frac{\partial }{\partial t}(\rho \mathbf{u}) dV = \int\_{V(t)}\rho\frac{D\mathbf{u}}{Dt}dV
$$

So far, we only tackled the momentum derivative of the Newton's law. We can write down the total forces (body and surface) applied on this same fluid element:

$$
\sum \mathbf{F} = \int\_{V(t)}(\mathbf{B}dV + \int\_{S(t)}\mathbf{S})dS
$$

The body force in this case is the gravity, thus:

$$
\int\_{V(t)}\mathbf{B}dV = \int\_{V(t)}\rho \mathbf{g}dV
$$

For the surface force, this is the sum of all traction forces (we can call this stress vector $\mathbf{T}$) applied on the surfaces of the fluid element. According to the Cauchy's postulate, we can relate this stress vector with a stress tensor, which represents the internal forces to resist the deformation of fluid or solid.

$$
\int\_{S(t)}\mathbf{S}dS = int\_{S(t)}\mathbf{T}dS = int\_{S(t)}\mathbf{\sigma}\cdot\hat{\mathbf{n}}dS
$$

Applying the Gauss divergence theorem:

$$
\int\_{S(t)}\mathbf{\sigma}\cdot\hat{\mathbf{n}}dS = \int\_{V(t)}\nabla\cdot\mathbf{\sigma}dV
$$

I'll go through these forces quickly to arrive at the Navier-Stokes equation for an incompressible fluid ($\nabla\cdot\mathbf{u} = 0$). For a Newtonian fluid, we can write:

$$
\mathbf{\sigma} = -p\mathbf{I} + \mathbf{\tau} = -p + \mu(\nabla\mathbf{u} + (\nabla\mathbf{u})^T)
$$

where $p$ is the isotropic thermal-dynamic pressure of the fluid, and $\tau$ is the viscous stress tensor.

The surface force is then written as:

$$
\int\_{V(t)}\nabla\cdot\mathbf{\sigma}dV = \int\_{V(t)}\nabla(-p + \mu(\nabla\mathbf{u} + (\nabla\mathbf{u})^T))dV = \int\_{V(t)}(-\nabla p + \mu\nabla^{2}\mathbf{u})dV
$$

Finally, we can arrive at:

$$
\int\_{V(t)}\rho\frac{D\mathbf{u}}{Dt}dV = \int\_{V(t)}(-\nabla p + \rho \mathbf{g}+ \mu\nabla^{2}\mathbf{u})dV
$$

Or:

$$
\rho\Big(\frac{\partial\mathbf{u}}{\partial t} + (\mathbf{u}\cdot\nabla)\mathbf{u}\Big) = -\nabla p + \rho \mathbf{g} + \mu\nabla^{2}\mathbf{u}
$$




