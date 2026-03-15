# 4:1 Multiplexer

## Description
This project features the RTL implementation of a 4-to-1 Multiplexer using VHDL. Developed with a Behavioral modeling style, the design provides an efficient solution for data selection in digital systems, where one of four data inputs is routed to a single output line based on a 2-bit control signal. The code is structured for high-speed synthesis and verified through a simulation stimulus covering all selection states.
## Theory and Functional Logic
A 4:1 Multiplexer is a combinational circuit that follows the $2^n$ principle, where $n=2$ selection lines control 4 input channels. Based on the binary value of the selection bits ($S_1, S_0$), the corresponding input is transparently latched to the output, effectively acting as a digitally controlled switch.

### Schematic Diagram and Output waveform of 4:1 Multiplexer

![](https://github.com/hossain190503/VHDL_VLSI_PROJECT/blob/main/VHDL_VLSI_PROJECT/4_1_Multiplexer/img/4_1_MUX.png?raw=true)
![](https://github.com/hossain190503/VHDL_VLSI_PROJECT/blob/main/VHDL_VLSI_PROJECT/4_1_Multiplexer/img/4_1_MUX_SIG.png?raw=true)
