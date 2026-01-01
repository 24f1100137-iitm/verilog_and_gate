# And_gate testbench.sv in EDA playground

module testbench;
  reg x,y; //input of dut is reg//	
  wire z;	// output of dut is wire //
  // my dut function which is design under test //
  And dut(.x(x), .y(y), .z(z));
  initial
     $monitor("Time=%t x=%b y=%b z=%b",$time,x,y,z); //monitor print the all values//
  initial begin
    $dumpfile("dump.vcd"); //It records every signal value change over time //
    $dumpvars(0,testbench); //EPWave is generate the all internal signals (levels,scope)//
    x=0; y=0; #5;
    x=0; y=1; #5;
    x=1; y=0; #5;
    x=1; y=1; #5;
    $display("Test complt"); // display the value which written in () it//
  $finish;
  end
endmodule
