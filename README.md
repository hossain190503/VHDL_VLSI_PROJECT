# VHDL_VLSI_PROJECT

**VHDL (VHSIC Hardware Description Language)** is a formal notation used to describe the **structure and behavior of digital systems**. It allows designers to model hardware at various levels of abstraction, utilizing an **Entity** to define the interface (input/output ports) and an **Architecture** to specify the internal logic. VHDL is widely used for **RTL synthesis** and simulation, relying on standardized libraries like `IEEE.STD_LOGIC_1164` to represent digital signals.

My project works encompass a comprehensive library of digital logic modules, which can be summarized into the following categories:

### **1. Fundamental Combinational Gates**
The project includes the design and verification of basic logic gates. This includes **2-input AND and OR gates**, as well as a single **XOR gate**. More complex logic is demonstrated through **4-input NAND and NOR gate designs**, which utilize nested logic operations to handle multiple inputs.

### **2. Arithmetic Circuits**
A significant portion of the work focuses on binary arithmetic units:
*   **1-Bit Units:** Implementation of **Half-Adder/Half-Subtractor** and **Full-Adder/Full-Subtractor** circuits to handle basic bit-wise operations with carry and borrow logic.
*   **4-Bit Units:** Design of a **4-bit Adder** and a **4-bit Subtractor**, which utilize internal signals to propagate carries and borrows across bit vectors.

### **3. Data Routing and Comparison**
These modules manage how data is selected, decoded, or compared within a system:
*   **Multiplexers:** Implementation of **4:1 and 8:1 Multiplexers** using process-based **case statements** to route a specific input to the output based on the binary weight of selection lines.
*   **Decoder:** A **3:8 Decoder** featuring an **enable signal** that activates one of eight outputs based on a 3-bit input vector.
*   **Comparator:** A **4-bit Comparator** that determines the magnitude relationship (**Greater than, Equal to, or Smaller than**) between two 4-bit inputs.

### **4. Sequential Logic**
The project transitions into memory-based circuits with two key designs:
*   **D Flip-Flop:** A storage element that captures the input state on the **rising edge of the clock** and includes an **asynchronous reset**.
*   **4-Bit Counter:** A synchronous **up-counter** that increments its value on each clock cycle and can be cleared using a reset signal.

### **5. Verification and Stimulus**
Every design is paired with a dedicated **testbench (TB)**. These testbenches instantiate the design as a **Unit Under Test (UUT)** and apply a timed **stimulus**—a sequence of input combinations—to verify that the outputs match the expected logical behavior.
