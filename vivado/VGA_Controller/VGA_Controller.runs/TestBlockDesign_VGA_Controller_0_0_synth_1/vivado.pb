
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:102

00:00:222	
494.0162	
202.977Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
D:/Vivado/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
53*	vivadotcl2y
wsynth_design -top TestBlockDesign_VGA_Controller_0_0 -part xc7a35ticsg324-1L -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a35tiZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a35tiZ17-349h px� 
F
Loading part %s157*device2
xc7a35ticsg324-1LZ21-403h px� 
\
$Part: %s does not have CEAM library.966*device2
xc7a35ticsg324-1LZ21-9227h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
19036Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:20 ; elapsed = 00:00:35 . Memory (MB): peak = 1355.590 ; gain = 447.023
h px� 
�
synthesizing module '%s'638*oasys2$
"TestBlockDesign_VGA_Controller_0_02�
�d:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.gen/sources_1/bd/TestBlockDesign/ip/TestBlockDesign_VGA_Controller_0_0/synth/TestBlockDesign_VGA_Controller_0_0.vhd2
718@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
VGA_Controller2X
VD:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.srcs/sources_1/new/VGA_Controller.vhd2
342
U02
VGA_Controller2�
�d:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.gen/sources_1/bd/TestBlockDesign/ip/TestBlockDesign_VGA_Controller_0_0/synth/TestBlockDesign_VGA_Controller_0_0.vhd2
1038@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
VGA_Controller2Z
VD:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.srcs/sources_1/new/VGA_Controller.vhd2
478@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA_Controller2
02
12Z
VD:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.srcs/sources_1/new/VGA_Controller.vhd2
478@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
"TestBlockDesign_VGA_Controller_0_02
02
12�
�d:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.gen/sources_1/bd/TestBlockDesign/ip/TestBlockDesign_VGA_Controller_0_0/synth/TestBlockDesign_VGA_Controller_0_0.vhd2
718@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
frame_counter_s_reg2Z
VD:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.srcs/sources_1/new/VGA_Controller.vhd2
988@Z8-6014h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[15]2
VGA_ControllerZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[14]2
VGA_ControllerZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[13]2
VGA_ControllerZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[12]2
VGA_ControllerZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:32 ; elapsed = 00:00:59 . Memory (MB): peak = 1507.805 ; gain = 599.238
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:01:01 . Memory (MB): peak = 1507.805 ; gain = 599.238
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:33 ; elapsed = 00:01:01 . Memory (MB): peak = 1507.805 ; gain = 599.238
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.5032

1507.8052
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

1607.5862
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.4832

1612.5942
5.008Z17-268h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:54 ; elapsed = 00:01:43 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Loading part: xc7a35ticsg324-1L
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:54 ; elapsed = 00:01:43 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:54 ; elapsed = 00:01:43 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:56 ; elapsed = 00:01:49 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 400   
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 2     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 5     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[15]2
VGA_ControllerZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[14]2
VGA_ControllerZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[13]2
VGA_ControllerZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
VRAM_Data[12]2
VGA_ControllerZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:19 ; elapsed = 00:02:31 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:31 ; elapsed = 00:02:53 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:01:32 ; elapsed = 00:02:54 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:01:33 ; elapsed = 00:02:56 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:01:43 ; elapsed = 00:03:15 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:43 ; elapsed = 00:03:15 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:43 ; elapsed = 00:03:15 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:43 ; elapsed = 00:03:15 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:43 ; elapsed = 00:03:16 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:43 ; elapsed = 00:03:16 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |CARRY4 |     8|
h px� 
2
%s*synth2
|2     |LUT1   |     7|
h px� 
2
%s*synth2
|3     |LUT2   |    13|
h px� 
2
%s*synth2
|4     |LUT3   |   186|
h px� 
2
%s*synth2
|5     |LUT4   |    22|
h px� 
2
%s*synth2
|6     |LUT5   |    53|
h px� 
2
%s*synth2
|7     |LUT6   |   699|
h px� 
2
%s*synth2
|8     |MUXF7  |   324|
h px� 
2
%s*synth2
|9     |MUXF8  |   144|
h px� 
2
%s*synth2
|10    |FDRE   |  4865|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:43 ; elapsed = 00:03:16 . Memory (MB): peak = 1612.594 ; gain = 704.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:04 ; elapsed = 00:03:02 . Memory (MB): peak = 1612.594 ; gain = 599.238
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:43 ; elapsed = 00:03:16 . Memory (MB): peak = 1612.594 ; gain = 704.027
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1852

1612.5942
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
476Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2$
"TestBlockDesign_VGA_Controller_0_02
VGA_ControllerZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1612.5942
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

b75b0ff4Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
242
112
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:532

00:03:402

1612.5942

1102.750Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0522

1612.5942
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�D:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.runs/TestBlockDesign_VGA_Controller_0_0_synth_1/TestBlockDesign_VGA_Controller_0_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2�
�report_utilization -file TestBlockDesign_VGA_Controller_0_0_utilization_synth.rpt -pb TestBlockDesign_VGA_Controller_0_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Nov 22 12:43:45 2024Z17-206h px� 


End Record