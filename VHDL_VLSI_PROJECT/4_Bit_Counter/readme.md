# 4-bit Binary Counter

## Description
This project features the implementation of a 4-bit Synchronous Binary Counter using VHDL. The design utilizes sequential logic to increment its state on every rising edge of the clock signal. It includes an asynchronous reset for immediate system initialization and is designed to handle overflow by wrapping around from 1111 back to 0000.

## Theory and Functional Logic
A binary counter is a sequential circuit that cycles through a sequence of binary states. In a 4-bit configuration, it provides 16 unique states (0 to 15). The logic is driven by a global clock signal, ensuring that all flip-flops within the counter trigger simultaneously, which minimizes timing glitches.

### Schematic Diagram and Output waveform of ADN gate:

![](https://github.com/hossain190503/VHDL_VLSI_PROJECT/blob/main/VHDL_VLSI_PROJECT/4_Bit_Counter/img/4_BIT_COUNTER.png?raw=true)
![](https://github.com/hossain190503/VHDL_VLSI_PROJECT/blob/main/VHDL_VLSI_PROJECT/4_Bit_Counter/img/4_BIT_COUNTER_SIG.png?raw=true)
