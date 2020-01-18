# Microprocessor-Design-and-Verilog-HDL

You will have to install Icarus Verilog (iverilog) which is an open source compiler for Verilog (.v) files. You may install it on your system through apt-get with the following command :

*sudo apt install iverilog*

The standard function of iverilog is very close to that of gcc. To invoke it just type iverilog followed by one or more source files followed by the output flag (-o) followed by your choice of output name. It will look like this: 

*iverilog ALU.v MUX.v REG.v REG FILE.v -o my design*

In order to run (simulate) the output file (my design) a special command is needed, vvp:

*vvp mydesign*

For visualization and debugging, another tool can aid in producing waveforms of a simulation instance. This tool is gtkwave which can be installed via apt :

*sudo apt install gtkwave*

gtkwave reads a special type of file .vcd (or Value Change Dump) that can be produced by adding specific directives in Verilog source files which will be detailed in the following section. To produce the waveform of a simulation you will use the following command:

*gtkwave wave.vcd*

where wave.vcd is the aforementioned special file.

## Testbench and GTKWave
In order to produce a waveform based on the simulation of your design, the relevant testbench must include the following instructions:

*$dumpfile("my wave.vcd")*
*$dumpvars(0, my bench)*

where my bench is the file name of your testbench and my wave.vcd is the waveform ”dump” file that will be used as an input to GTKWave. In order to produce the waveform, execute the following command:

*gtkwave my wave.vcd*

## Assignment

Complete the design and simulation of the basic CPU components if you have not done so during the Lab.

Deliverables:
• Verilog source Files for the CPU components
– Program Counter
– Instruction Memory
– Register File
– ALU
– Data Memory
• Benchmarks for each of the aforementioned components
