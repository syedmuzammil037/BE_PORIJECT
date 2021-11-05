# BE_Project

#introduction to visual sudio code 

Hear we going to learn how to creat,syntasys and gatelevel stimulate a verilogHDL file 

STEP 1:- Creat New Folder as shown and name it. for example mux
![1](https://user-images.githubusercontent.com/84916459/140499966-db6eef2b-427c-4e40-870c-bb3e9e8ace3e.png)


STEP 2:- open vscode and in vscode click openfolder using any of the two methods


STEP-3 :- creat new file with .v extension for example (mux2x1.v), by clicking the shown button


write the verilog code in that folder


STEP-4 Creat a TestBench file for the written verilog module. the main key point to take care while writing testbench is as followes

1.include "$dumpfile"

2.include "$monitor"


STEP-5 Now open a new terminal as shown and In terminal type the following commands


COMMANDS

1.iverilog modulename testbenchname (in my case => iverilog .\mux2x1.v .\tb_mux2x1.v) then press enter.


STEP-6

2.vvp a.out


you will be able to see resut in terminal as well as a new file with .vcd extention which is further use for generating waveforms


STEP-7 :-for generating waveforms we are using gtkwave EDA Tool for waveform representation. use the following command for opening .vcd file in gtkwave

3.gtkwave modulename.vcd in my case => gtkwave mux2x1.vcd


the following window pop's up click the testbench as shown and append ports.after that click zoom fit butten to observe all changing waveforms in a single window use mouse and click on the various points on waves to observe the values on left signals window.


FOR THE SYNTHESYS PROCESS

The main tool which we are using for now for synthesys process is YOSYS(Download link:http://www.clifford.at/yosys/download.html )

in this synthesys process we are using SKY130 liberary File. all the required files will be provided .



STEP-1

In terminal Type yosys to open yosys tool


STEP-2

CHECK FOR ERRORS if no errors come then follow the next command Type: read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib


STEP-3

after that type : read_verilog mux2x1.v // this command is use for reading module wirtten in verilog


STEP-4

after that use syntax for synthesys process : synth -top modulename // modulename means the name given in the main verilog code file for example "module modulename(i,o)"


STEP-5

For mapping flip-flops to library use following command : dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib


STEP-6

For mapping logic to library file use following command : abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib


STEP-7

for downloading netlist file type : show


STEP-8

now use following command : tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib


STEP-9

we are done with synthesys now we need to download or write the synthesys file into some sort of file mainly in verilog formate for this use : write_verilog -noattr netlist.v


Step-10

now we can exit for yosys tool for tha simply type "exit" and hit enter


at the end you will report.txt file and netlist.v

in which report.txt file shows the statistical data of the design made


and netlist.v file shows the all the detailed information which requred to make a intigrated Circuit. This is the file we give to foundry for making a physical copy.


FOR GATE LEVEL STIMULATION PROCESS

In this we are going to do Gatelevel simulation. for that we are going to use following files 1.netlist.v 2.sky130_fd_sc_hd.v 3.testbench.v use the following code for gatelevel simulation : iverilog netlist.v sky130_fd_sc_hd.v tb_mux2x1.v
