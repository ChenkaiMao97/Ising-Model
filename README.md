# Ising-Model
This is the simulation code of 2D [Ising Model](https://en.wikipedia.org/wiki/Ising_model). Ising Model simply saying is a 2D lattice model of spins that can take two values: up and down, and the total average magnet moment attached to the spins gives rise to the magnetic property of the material. Here I'm using monte carlo method to simulate the time variation of the spins and try to find a stable state. The transition rate is determined by the equilibrium conditions, and it can be proved that the final stable state is exactly the state under thermal equilibrium.

According to theoretical solutions, the critical temperature T<sub>C</sub> ≈ 2.269J, and the system behaviors differently when T < T<sub>C</sub>, T ~ T<sub>C</sub> and T > T<sub>C</sub>, and those situations are veritied by the simulation code.

## 1. T < T<sub>C</sub>
Here T = 1J. When the temperature T is smaller than T<sub>C</sub>, there will be spontaneous symmetry breaking and the spin of the material aligns automatically, and this give explanation to the nature of magnetism of some material.

<img src="./pics/T_1_size_200_1.png" width="170"/><img src="./pics/T_1_size_200_2.png" width="170"/>
<img src="./pics/T_1_size_200_3.png" width="170"/>
<img src="./pics/T_1_size_200_4.png" width="170"/><img src="./pics/T_1_size_200_5.png" width="170"/>

The reason sometimes it is two strips rather than a uniform area is that here I adopt periodic boundary condition and the simulation area is limited. 

## 2. T ~ T<sub>C</sub>
Here T = 2.269J. When the temperature T is very near T<sub>C</sub>, the correlation between different areas increases, and the correlation length goes to infinity. Because the simulation size is limited, so the media will keep changing and not converge to uniform or completely random.
<p align="center">
<img src="./pics/T_2.269_1.png" width="200"/><img src="./pics/T_2.269_2.png" width="200"/>
<img src="./pics/T_2.269_3.png" width="200"/><img src="./pics/T_2.269_4.png" width="200"/>
</p>

## 3. T > T<sub>C</sub>
Here T = 5J. When the temperature T is greater than T<sub>C</sub>, the spins will point randomly, and the average magnetic moment is zero, this explains the phenomenon that magnetic materials loses their magnetism in high temperature.

<p align="center">
<img src="./pics/T_5_1.png" width="280"/><img src="./pics/T_5_2.png" width="280"/>
<img src="./pics/T_5_3.png" width="280"/>
</p>


# Reference
The idea and algorithms come the book "Monte Carlo Methods in Statistical Physics, M. E. J. Newman and G. T. Barkema", chapter 1-4.

