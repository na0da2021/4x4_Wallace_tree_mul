# 4x4 Wallace Tree Multiplier

## Table of Contents
- Introduction
- Features
- Modules Description
- Installation
- Usage
- Simulation
- Contributing
- About the Author

## Introduction
The 4x4 Wallace Tree Multiplier is a sophisticated hardware algorithm designed for rapid multiplication operations in digital signal processing (DSP) applications. It leverages the Wallace reduction technique to significantly enhance the speed of multiplication. This repository contains a Verilog implementation of the 4x4 Wallace Tree Multiplier, which multiplies two 4-bit binary numbers.

## Features
- High-Speed Multiplication: The Wallace tree algorithm efficiently computes the product of two binary numbers, making it suitable for applications requiring fast multiplication.
- Modular Architecture: The design is modular, with separate modules for half-adders, full-adders, and a 6-bit carry-lookahead adder. This modularity allows for easy understanding, modification, and integration into larger systems.
- Comprehensive Testbench: The provided testbench (wallace_tb) thoroughly validates the functionality of the multiplier by simulating various input scenarios.

## Modules Description
1. wallace_tree_multiplier: The top-level module orchestrating the multiplication process. It integrates the following components:
   - Multiplication of Single Bits: The input bits are multiplied individually, resulting in partial products.
   - First Iteration: Combines the partial products using half-adders and full-adders.
   - Second Iteration: Further refines the sum using additional adders.
   - Final Carry Propagation: Utilizes a 6-bit carry-lookahead adder for efficient carry propagation.
   - Output Generation: Produces the final 8-bit product.
2. half_add: Performs half-addition (sum and carry).
3. full_add: Implements full addition with a carry input.
4. cla: A 6-bit carry-lookahead adder that minimizes delay during addition.

## Installation
1. Clone this repository to your local machine:

   git clone https://github.com/na0da2021/4x4_Wallace_tree_mul.git

2. Navigate to the cloned directory and explore the Verilog source files.

## Usage
1. Include the wallace_tree_multiplier.v file in your Verilog project.
2. Instantiate the wallace_tree_multiplier module, connecting the inputs (in1, in2) and output (out).

## Simulation
1. Run the provided testbench (wallace_tb) using your preferred Verilog simulation tool (e.g., ModelSim).
2. Observe the simulation results, which demonstrate the correctness of the multiplier under various input conditions.

## Contributing
Contributions to enhance the multiplier or extend its functionality are welcome. Fork the repository, make your changes, and submit a pull request for review.

## About The Author
Author: Nada Omar

Email: na0da2021@gmail.com

Education: Electronics and communication department.

College: Faculty of Engineering, Alexandria university, Egypt.
