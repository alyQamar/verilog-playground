# Verilog Playground

Welcome to my Verilog playground, where I experiment with digital logic designs and test my skills! This repository houses various Verilog implementations I've created during my college coursework in Computer-aided design.

## Contents

-   **and_gate:** Explores the fundamental AND gate and its behavior in Verilog.
-   **comparator:** Builds a comparator to compare two binary numbers, demonstrating comparison logic.
-   **decoder_7seg:** Implements 7-segment decoders using both conditional and logical operators, showcasing different design approaches.
-   **d_flip_flop:** Constructs a D flip-flop, a crucial building block in sequential logic circuits.
-   **full_adder:** Creates a full adder circuit, essential for arithmetic operations in digital systems.
-   **half_adder:** Implements a half adder, a foundational component for understanding binary addition.
-   **rba_4bit:** Designs a 4-bit ripple carry adder, demonstrating the concept of ripple carry addition.
-   **rcs_4bit:** Implements a 4-bit ripple subcurator with full-adders.

## Usage

Clone this repository: git clone https://github.com/alyQamar/verilog-playground.git
Navigate to the desired project directory.
Use a Verilog simulator (e.g., Icarus Verilog, ModelSim) to simulate the code.
Refer to the testbench files (ending in \_tb.v) for simulation examples.

## Simulate the code

-   Using iverilog

```bash
iverilog -o simulation_output module_name.v module_name_tb.v

vvp simulation_output.vvp

gtkwave simulation_output.vcd
```

-   Using VS Code (with the Verilog HDL extension)
    1 - Open the module_name_tb.v file in VS Code.
    2 - Configure the launch configuration for iverilog and gtkwave.
    3- Run the simulation from within VS Code.
    3- run the simulation output with gtkwave.
    ```bash
    gtkwave simulation_output.vcd
    ```

## About Me

I'm a Computer Engineering student and this repository serves as a platform for my learning and experimentation.

## Acknowledgements

Special thanks to my professors and classmates for their guidance and support.

**Happy experimenting!**
