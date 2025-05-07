# Timing simulation for RippleShift configuration (TS_RippleShift.do)
# Quit any existing simulation
quit -sim

# Create a working directory if it doesn't exist
if {![file exists work]} {
    vlib work
}

# Clean the work library to avoid conflicts
vdel -lib work -all
vlib work

# First compile the Quartus-generated timing model
vcom -2008 -work work ../Simulation/ModelSim/RippleShift_cyclone.vho

# Then compile supporting files
vcom -2008 -work work ../SourceCode/ZeroFlag.vhd
vcom -2008 -work work ../SourceCode/Mux4to1.vhd
vcom -2008 -work work ../SourceCode/Mux2to1.vhd
vcom -2008 -work work ../SourceCode/SLL64.vhd
vcom -2008 -work work ../SourceCode/SRL64.vhd
vcom -2008 -work work ../SourceCode/SRA64.vhd
vcom -2008 -work work ../SourceCode/UnifiedShifter.vhd
vcom -2008 -work work ../SourceCode/Rip64.vhd
vcom -2008 -work work ../SourceCode/CSEA64.vhd
vcom -2008 -work work ../SourceCode/CLA64.vhd
vcom -2008 -work work ../SourceCode/CSA64.vhd
vcom -2008 -work work ../SourceCode/Adder.vhd
vcom -2008 -work work ../SourceCode/LogicUnit.vhd
vcom -2008 -work work ../SourceCode/ArithUnit.vhd
vcom -2008 -work work ../SourceCode/Shifter.vhd
vcom -2008 -work work ../SourceCode/ShiftUnit.vhd

# Finally compile the testbench (don't compile the configurations)
vcom -2008 -work work ../Simulation/TBExecUnit.vhd

# Set transcript file for logging timing data
transcript file Timing_Report.txt

# Start simulation with SDF back-annotation 
# Note: We're using 'structure' here as that's the typical architecture name in Quartus-generated files
vsim -t ns -sdftyp /TBExecUnit/DUT=../Simulation/ModelSim/RippleShift_cyclone_vhd.sdo work.TBExecUnit

# Add waves 
add wave -position end -divider "TestIndex"
add wave -color blue -label "Measurement Index" -radix decimal sim:/TBExecUnit/measurement_index_sig
add wave -position end -divider "Inputs"
add wave -position end sim:/TBExecUnit/DUT/A
add wave -position end sim:/TBExecUnit/DUT/B
add wave -position end -divider "Control Signals"
add wave -position end sim:/TBExecUnit/DUT/FuncClass
add wave -position end sim:/TBExecUnit/DUT/LogicFN
add wave -position end sim:/TBExecUnit/DUT/ShiftFN
add wave -position end sim:/TBExecUnit/DUT/AddnSub
add wave -position end sim:/TBExecUnit/DUT/ExtWord
add wave -position end -divider "Outputs"
add wave -position end sim:/TBExecUnit/DUT/Y
add wave -position end sim:/TBExecUnit/DUT/Zero
add wave -position end sim:/TBExecUnit/DUT/AltB
add wave -position end sim:/TBExecUnit/DUT/AltBu

# Add timing measurement signals
add wave -position end -divider "Timing Measurements"
add wave -position end sim:/TBExecUnit/StartTime
add wave -position end sim:/TBExecUnit/PropDelay
add wave -position end sim:/TBExecUnit/Y_expected

# Configure the wave window
configure wave -namecolwidth 200
configure wave -valuecolwidth 200
configure wave -signalnamewidth 1
configure wave -timelineunits ns

# Run the simulation
run 20 us

# Zoom to see all signals
wave zoom full