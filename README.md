# Two-Dimensional Disk Gas Simulator

<img src="http://i.imgur.com/Fh2e5vB.png" width="400">

This MATLAB program simulates 400 molecules located in a two-dimensional plane. The molecules have an initial uniform spacing of 1 unit apart, and the diameter of the molecules is d = 0.1 and their mass is m = 1. 

The goal of the program is to validate the Maxwell Boltzmann distribution for a two-dimensional (disk, not sphere) gas.

Initially, the particles are given uniform velocity of 1 unit speed/time in random directions.

## Methods 

Check out the [report](https://github.com/jlian/2d-gas-simulator/blob/master/report.pdf).

The algorithm was implemented with the help of *Molecular Dynamics Simulation by Haile*, J. M..

Time steps are not uniform in this simulation. Each frame is resolved by finding the next collision event and the time stamp, then solving for all the particle parameters (positions, velocities) and potential collision times with every other particle.

The MATLAB program was implemented to be able to output real-time animation of the simulation. In order to achieve fast simulation time as well as quick graphics output, the program is selective in updating only the necessary information for each frame. Since each frame is driven by a collision event, the program only updates the particle parameters and potential collision times for those involved in the event instead of all particles. At the same time, instead of calling a `plot()` function for every frame, the program uses `set()` for the `xdata` and `ydata` in the existing plot.

Please see also my post about animation in MATLAB: https://jlian.co/post/matlab-animation/

## How to use

Run the `TwoDSim.m` file in MATLAB to see the animation happen. Play around with the number of particles and the number of collision events and see how that affects the resulting probability distributions. I've also included a pdf copy of the report submitted with the program.

## Animation

See [Efficient animation with MATLAB | John Lian](https://johnlian.net/posts/matlab-animation/).
