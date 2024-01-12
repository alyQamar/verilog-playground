# Verilog Playground

Welcome to my Verilog playground, where I experiment with digital logic designs and test my skills! This repository houses various Verilog implementations I've created during my college coursework in Computer-aided design.

## Contents

```
    └── 📁and_gate
        └── and_gate.v
        └── and_gate_tb.v
    └── 📁comparator
        └── comparator.png
        └── comparator.v
        └── comparator_tb.v
    └── 📁decoder_7seg
        └── conditional_decoder_7seg.v
        └── conditional_decoder_7seg_tb.v
        └── logical_decoder_7seg.v
        └── logical_decoder_7seg_tb.v
        └── seven_segment.png
        └── seven_segment_decoder-with-conditional-operators.png
        └── seven_segment_decoder-with-logical-operators.png
    └── 📁d_flip_flop
        └── d_flip_flop.v
        └── d_flip_flop_tb.v
    └── 📁full_adder
        └── full_adder.png
        └── full_adder.v
        └── full_adder_tb.v
    └── 📁half_adder
        └── half_adder.v
        └── half_adder_tb.v
    └── 📁rca_4bit
        └── rca_4bit.png
        └── rca_4bit.v
    └── 📁rbs_4bit
        └── rbs_4bit.png
        └── rbs_4bit.v

```

- **and_gate:** Explores the fundamental AND gate and its behavior in Verilog.
- **comparator:** Builds a comparator to compare two binary numbers, demonstrating comparison logic.
- **decoder_7seg:** Implements 7-segment decoders using both conditional and logical operators, showcasing different design approaches.
- **d_flip_flop:** Constructs a D flip-flop, a crucial building block in sequential logic circuits.
- **full_adder:** Creates a full adder circuit, essential for arithmetic operations in digital systems.
- **half_adder:** Implements a half adder, a foundational component for understanding binary addition.
- **rba_4bit:** Designs a 4-bit ripple carry adder, demonstrating the concept of ripple carry addition.
- **rcs_4bit:** Implements a 4-bit ripple subcurator with full-adders.

## Usage

- Clone this repository: git clone https://github.com/alyQamar/verilog-playground.git
- Navigate to the desired project directory.
  Use a Verilog simulator (e.g., Icarus Verilog, ModelSim) to simulate the code.
- Refer to the testbench files (ending in \_tb.v) for simulation examples.

## Simulate the code

- Using [iverilog](https://bleyer.org/icarus/)

```bash
iverilog -o simulation_output module_name.v module_name_tb.v

vvp simulation_output.vvp

gtkwave simulation_output.vcd
```

- Using VS Code (with the [Verilog HDL](https://marketplace.visualstudio.com/items?itemName=leafvmaple.verilog) extension)
  1 - Open the module_name_tb.v file in VS Code.
  2 - Configure the launch configuration for iverilog and gtkwave.
  3- Run the simulation to get "simulation_output.vsd" within VS Code.
  4- Run the simulation output with gtkwave.
  ```bash
  gtkwave simulation_output.vcd
  ```

## About Me

I'm a Computer Engineering student and this repository serves as a platform for my learning and experimentation.

## References

- Dr. Mohamed Ali Rohaim: Lectures notes (Computer Aided Design - SCE403).
- Verilog® Quickstart: A Practical Guide to Simulation and Synthesis in Verilog (The Springer International Series in Engineering and Computer Science, 667) by James M. Lee
- Verilog Tutorial Playlist by Ahmed Hany : [Verilog HDL tutorial in arabic](https://youtube.com/playlist?list=PL3wGfPnyEQlHD09fR30jL3SQndmtXnCt5&feature=shared)

<br/>

**Happy experimenting!**
