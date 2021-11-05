# BE_Project

This is my final year major project. this project is in the domine of the VLSI region. we are using the language in Verilog HDL. The title and abstract of the project is as follows TITLE: "FPGA Implementation of 32 Bit Floating Point Multiplier Using Vedic Real Multipliers" ABSTRACT : Floating-point Complex numbers multiplication is an essential operation in DSP and communication applications with high speed and less power requirement. Hence, this paper presents an IEEE 754 format 32 x 32-bit floating point multiplier using four floating-point real multipliers solutions. Each 32-bit real floating multiplier requires a 24 bit fixed point real multiplier for mantissa multiplication. Based on the Indian Vedic mathematics sutra called URDHVA TIRYAKBHYAM, two architectures for 24 x24 bit Vedic real multiplier are proposed for mantissa multiplication in 32-bit floating-point real multiplier. The two architectures are evaluated to choose one having less path delay for use in the proposed floating-point multiplier. The four floating-point real multipliers solution for the proposed multiplier is coded in Verilog HDL for implementation on FPGA. Finally, the results of the proposed multiplier are compared with that of the Booth and Array multipliers. KEYWORDS:— Vedic Mathematics, Urdhva-triyakbhyam sutra, Vedic real multiplier, floating Point multiplier, FPGA, IEEE 754, VLSI

#introduction to visual sudio code 

Hear we going to learn how to creat,syntasys and gatelevel stimulate a verilogHDL file 

STEP 1:- Creat New Folder as shown and name it. for example mux

![1](https://user-images.githubusercontent.com/84916459/140499966-db6eef2b-427c-4e40-870c-bb3e9e8ace3e.png)

STEP 2:- open vscode and in vscode click openfolder using any of the two methods

![2](https://user-images.githubusercontent.com/84916459/140509698-8d5e6bd4-ad1d-4e90-b766-4497f2570b37.png)

STEP-3 :- creat new file with .v extension for example (mux2x1.v), by clicking the shown button

![3](https://user-images.githubusercontent.com/84916459/140509746-b932e391-5a2f-4485-b3c7-ed98f85e4b38.png)

write the verilog code in that folder

![4](https://user-images.githubusercontent.com/84916459/140509785-1e9bee3e-b260-4db3-9ca4-ef6ff068f278.png)

STEP-4 Creat a TestBench file for the written verilog module. the main key point to take care while writing testbench is as followes

1.include "$dumpfile"

2.include "$monitor"

![5](https://user-images.githubusercontent.com/84916459/140509871-8d27dc8e-cabb-47b8-be21-fcbb346e298a.png)

![6](https://user-images.githubusercontent.com/84916459/140509895-222eee6c-4472-4aff-881e-43168b3cae4b.png)

STEP-5 Now open a new terminal as shown and In terminal type the following commands

![7](https://user-images.githubusercontent.com/84916459/140509915-22a191af-1030-40c7-925a-1a90f6df643b.png)

COMMANDS

1.iverilog modulename testbenchname (in my case => iverilog .\mux2x1.v .\tb_mux2x1.v) then press enter.

![8](https://user-images.githubusercontent.com/84916459/140509961-2b7a47a7-1de9-4afe-995e-a53781446b73.png)

STEP-6

2.vvp a.out

![9](https://user-images.githubusercontent.com/84916459/140510003-6a29b7fa-88b8-4e18-9619-e6fb1a96bf32.png)

you will be able to see resut in terminal as well as a new file with .vcd extention which is further use for generating waveforms

![10](https://user-images.githubusercontent.com/84916459/140510036-911b9117-8b3f-4de1-b936-024555bd18d5.png)

STEP-7 :-for generating waveforms we are using gtkwave EDA Tool for waveform representation. use the following command for opening .vcd file in gtkwave

![11](https://user-images.githubusercontent.com/84916459/140510093-886e747c-ff12-4b26-a743-b4ab92df5ced.png)

3.gtkwave modulename.vcd in my case => gtkwave mux2x1.vcd


the following window pop's up click the testbench as shown and append ports.after that click zoom fit butten to observe all changing waveforms in a single window use mouse and click on the various points on waves to observe the values on left signals window.
![12](https://user-images.githubusercontent.com/84916459/140510111-57af7337-8e49-4532-a685-c7ee132c06bd.png)
![13](https://user-images.githubusercontent.com/84916459/140510295-0e2ce87e-763a-4d39-ae43-374a1ac707bc.png)
![![14](https://user-images.githubusercontent.com/84916459/140510185-9e12bf8a-22fd-4dba-9307-95472bcb2e1d.png)
![15](https://user-images.githubusercontent.com/84916459/140510317-06a6fbb2-4298-4af4-bc71-15397d5d38e6.png)

FOR THE SYNTHESYS PROCESS

The main tool which we are using for now for synthesys process is YOSYS(Download link:http://www.clifford.at/yosys/download.html )

in this synthesys process we are using SKY130 liberary File. all the required files will be provided .
![16](https://user-images.githubusercontent.com/84916459/140510352-30d04f1e-d993-4970-957d-d3ba4e260ee9.png)
![17](https://user-images.githubusercontent.com/84916459/140510355-a2201cb6-157b-42f7-899a-315ee791c449.png)
![18](https://user-images.githubusercontent.com/84916459/140510360-dfe28680-97cc-4d07-b186-3fd68ecaa78e.png)



STEP-1

In terminal Type yosys to open yosys tool

![19](https://user-images.githubusercontent.com/84916459/140510389-3364006e-3406-4f9e-9500-0e9f1ee369e6.png)

STEP-2

then follow the next command Type: read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib

![20](https://user-images.githubusercontent.com/84916459/140510519-b11ac485-f83b-4cd7-ac47-03452cf3a92f.png)

STEP-3

after that type : read_verilog mux2x1.v // this command is use for reading module wirtten in verilog

![21](https://user-images.githubusercontent.com/84916459/140510540-6ee2b6a5-97e1-4d21-bfce-81ace953c715.png)

STEP-4

after that use syntax for synthesys process : synth -top modulename // modulename means the name given in the main verilog code file for example "module modulename(i,o)"

![22](https://user-images.githubusercontent.com/84916459/140510552-22c1fb7f-9898-4058-a44d-721654dc6049.png)

STEP-5

For mapping flip-flops to library use following command : dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

![23](https://user-images.githubusercontent.com/84916459/140510586-8650d19e-79e8-4153-aabb-8e2f10f707f3.png)

STEP-6

For mapping logic to library file use following command : abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

![24](https://user-images.githubusercontent.com/84916459/140510609-c073332a-9aaa-4bc2-9748-45ac8f2e844e.png)

STEP-7

for downloading netlist file type : show

![25](https://user-images.githubusercontent.com/84916459/140510650-f33e0c62-f8cc-4f5c-a63b-e4d467750188.png)
![26](https://user-images.githubusercontent.com/84916459/140510700-15e5a171-ce77-4cbb-ae35-ae86f5bfa9bb.png)

STEP-8

now use following command : tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

![27](https://user-images.githubusercontent.com/84916459/140510726-269ea10f-4a05-40fc-82f7-5c856f2cf413.png)

STEP-9

we are done with synthesys now we need to download or write the synthesys file into some sort of file mainly in verilog formate for this use : write_verilog -noattr netlist.v

![29](https://user-images.githubusercontent.com/84916459/140510820-fc4a2b09-958d-4758-8b5e-a5b80d455925.png)

Step-10

now we can exit for yosys tool for tha simply type "exit" and hit enter

![31](https://user-images.githubusercontent.com/84916459/140510875-a38bd9a1-4b6b-4f2c-8e50-c0847b341bb6.png)

at the end you will report.txt file and netlist.v

in which report.txt file shows the statistical data of the design made 

![28](https://user-images.githubusercontent.com/84916459/140510939-8dc0145f-3c11-46cb-9353-b8a228876885.png)

and netlist.v file shows the all the detailed information which requred to make a intigrated Circuit. This is the file we give to foundry for making a physical copy.

![30](https://user-images.githubusercontent.com/84916459/140510955-97d2bf7a-1dd2-438c-8339-bf2542db0496.png)

FOR GATE LEVEL STIMULATION PROCESS

In this we are going to do Gatelevel simulation. for that we are going to use following files 1.netlist.v 2.sky130_fd_sc_hd.v 3.testbench.v use the following code for gatelevel simulation : iverilog netlist.v sky130_fd_sc_hd.v tb_mux2x1.v

![32](https://user-images.githubusercontent.com/84916459/140510984-7a7da4d1-4fa5-46c5-b10c-afa2433809e0.png)
