vsim work.test1(behave)
do Z:/Schaltkreisentwurf/FPGA/simulation/wave.do

run 2 ns
force -freeze sim:/test1/A 0 0
force -freeze sim:/test1/B 0 0
force -freeze sim:/test1/C 0 0
run 1 ns

force -freeze sim:/test1/A 1 0
run 1 ns

force -freeze sim:/test1/A 0 500ps
run 1 ns