# 3:8 Decoder Implementation
# Description
This project features the RTL implementation of a 3-to-8 Line Decoder using VHDL. Developed with a Behavioral modeling style, the design provides an efficient solution for memory address decoding and peripheral selection within digital systems. The circuit interprets a 3-bit binary input to activate one of eight unique output lines. The codebase is optimized for synthesis and includes a comprehensive testbench to verify the decoding logic across all input combinations.
## Theory and Functional Logic
A 3:8 decoder is a combinational logic circuit that converts a 3-bit binary code into eight mutually exclusive outputs. It follows the $2^n$ principle where $n=3$ inputs result in 8 outputs. When the device is enabled, only the output line corresponding to the binary value of the input becomes active (high), while all other lines remain inactive (low). This is essential for routing data to specific locations in a multi-device system.

### Schematic Diagram and Output waveform of 3:8 Decoder 

![](https://github.com/hossain190503/VHDL_VLSI_PROJECT/blob/main/VHDL_VLSI_PROJECT/3_8_Decoder/img/3_8_DECODER.png?raw=true)
![](https://github.com/hossain190503/VHDL_VLSI_PROJECT/blob/main/VHDL_VLSI_PROJECT/3_8_Decoder/img/3_8_DECODER_SIG.png?raw=true)
