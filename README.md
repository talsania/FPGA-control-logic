# FPGA Logic Designs

Covering digital logic design and control concepts using Verilog HDL on FPGA hardware.

## Overview

**Board used:** Nexys A7 (Artix-7 FPGA)  
**Language:** Verilog HDL  
**Tools:** Vivado Design Suite

## Projects

### 01 - Switch AND Logic
Implementation of basic combinational logic using switches as inputs and LEDs as outputs. Two switches control one LED through an AND gate while a third switch directly controls another LED.

<img width="1756" height="1161" alt="p1" src="https://github.com/user-attachments/assets/931c353a-31e8-4483-93eb-cea62a9d5133" />

**Pin Assignments:**
| Signal | FPGA Pin | I/O Standard |
|--------|----------|--------------|
| SWITCH1 | J15 | LVCMOS33 |
| SWITCH2 | L16 | LVCMOS33 |
| SWITCH3 | M13 | LVCMOS33 |
| LED1 | R18 | LVCMOS33 |
| LED2 | V17 | LVCMOS33 |

### 02 - Logic Gates with Testbench
Simulation of basic logic gates (AND, OR) with testbench testing all input combinations.

<img width="1486" height="1250" alt="p2" src="https://github.com/user-attachments/assets/f38f98c1-9247-4be6-a6b5-be5189cd3a09" />

**Test Pattern:**
```
Time | input1 | input2 | output1 (AND) | output2 (OR)
-----|--------|--------|---------------|-------------
100  |   0    |   0    |       0       |      0
200  |   0    |   1    |       0       |      1
300  |   1    |   0    |       0       |      1
400  |   1    |   1    |       1       |      1
```

### 03 - Switch Debouncer
Digital circuit to eliminate mechanical switch bounce using a synchronizer chain and edge detection. It filters noisy switch signals and produces a single clean output pulse on button press.

<img width="1011" height="571" alt="p3_1" src="https://github.com/user-attachments/assets/e5f11570-3843-466c-871b-34149b210904" />

**Architecture:**
```
pb_in → [Clock Div] → [DFF0] → [DFF1] → [DFF2] → Edge Detect → pb_out
                ↓
          slow_clk (divided clock)
```
<img width="2423" height="750" alt="p3_2" src="https://github.com/user-attachments/assets/13efa293-cdc2-4a8d-8622-f9fd341f7865" />

---
[Krishang Talsania](https://talsania.github.io)
