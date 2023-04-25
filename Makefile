CC = iverilog 
test_file := *.v
 
all: $(test_file)
	$(CC) -o wave -y ./ openmips_min_sopc_tb.v 

	vvp -n wave -lxt2
	gtkwave openmips_min_sopc_tb.vcd

clean:
	rm openmips_min_sopc_tb.vcd wave
