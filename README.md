# JK Flip-Flop using Verilog HDL

## Overview

This project implements a positive-edge triggered JK Flip-Flop using Verilog HDL. The JK Flip-Flop is a sequential logic circuit that overcomes the invalid state of the SR Flip-Flop by introducing a toggle operation when both inputs (`J` and `K`) are high. The output changes only on the positive edge of the clock. The complement output (`Q̅`) is generated using a continuous assignment statement. The design was verified using a Verilog testbench and the waveform was analyzed using GTKWave.

---

## Objective

The objective of this project is to design, simulate, and verify a positive-edge triggered JK Flip-Flop using Verilog HDL and understand the behavior of sequential logic circuits.

---

## Features

- Positive-edge triggered JK Flip-Flop
- Behavioral modeling using Verilog HDL
- Hold, Reset, Set, and Toggle operations
- Complement output (`Q̅`)
- Verilog testbench for functional verification
- Waveform generation using GTKWave
- Simulation using Icarus Verilog

---

## Inputs and Outputs

| Signal | Width | Description |
|---------|------|-------------|
| clk | 1-bit | Clock input |
| j | 1-bit | J input |
| k | 1-bit | K input |
| q | 1-bit | Flip-Flop output |
| q_b | 1-bit | Complement of output (`Q̅`) |

---

## Working Principle

The JK Flip-Flop updates its output only on the positive edge of the clock.

- When **J = 0** and **K = 0**, the flip-flop retains its previous output (Hold).
- When **J = 0** and **K = 1**, the output is reset to logic 0.
- When **J = 1** and **K = 0**, the output is set to logic 1.
- When **J = 1** and **K = 1**, the output toggles on every positive edge of the clock.
- The complement output (`Q̅`) always remains the inverse of `Q`.

---

## Truth Table

| Clock Edge | J | K | Previous Q | Next Q | Operation |
|:----------:|:-:|:-:|:----------:|:------:|-----------|
| ↑ | 0 | 0 | Q | Q | Hold |
| ↑ | 0 | 1 | X | 0 | Reset |
| ↑ | 1 | 0 | X | 1 | Set |
| ↑ | 1 | 1 | 0 | 1 | Toggle |
| ↑ | 1 | 1 | 1 | 0 | Toggle |

---

## Waveform Analysis

The generated waveform verifies the correct functionality of the JK Flip-Flop.

- During the **Hold** condition (`J = 0`, `K = 0`), the output `Q` retains its previous value.
- During the **Reset** condition (`J = 0`, `K = 1`), the output changes to logic 0 on the next positive clock edge.
- During the **Set** condition (`J = 1`, `K = 0`), the output changes to logic 1 on the next positive clock edge.
- During the **Toggle** condition (`J = 1`, `K = 1`), the output toggles between logic 0 and logic 1 on every rising edge of the clock.
- The waveform also confirms that `Q̅` always remains the complement of `Q`.

The simulation results match the expected truth table, confirming the correct implementation of the JK Flip-Flop.

---

## Project Structure

```
JK-Flip-Flop/
│── jk_ff.v
│── jk_ff_tb.v
│── jk_ff.vcd
│── waveform.png
└── README.md
```

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

---

## Simulation Steps

### Compile

```bash
iverilog -o jk_ff_sim jk_ff.v jk_ff_tb.v
```

### Run

```bash
vvp jk_ff_sim
```

### View Waveform

```bash
gtkwave jk_ff.vcd
```

---

## Applications

- Binary Counters
- Shift Registers
- Frequency Dividers
- Finite State Machines (FSM)
- Memory Elements
- Digital Sequential Circuits

---

## Learning Outcomes

Through this project, I learned:

- Sequential circuit design using Verilog HDL.
- Positive-edge triggered flip-flop operation.
- Hold, Set, Reset, and Toggle functionality.
- Continuous assignment using `assign`.
- Writing Verilog testbenches.
- Clock generation in simulation.
- Functional verification using Icarus Verilog.
- Waveform analysis using GTKWave.

---

## Author

**Chakkati Kiran Kumari**

GitHub: https://github.com/KIRAN038
