
`timescale 1 ns / 1 ps

module FDRE_v1_0 #
  (
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line


    // Parameters of Axi Slave Bus Interface S00_AXI

  )
  (
    // Users to add ports here
    input 	wire 	op,
    output 	wire 	res


    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface S00_AXI

  );
  reg temp;

  // Add user logic here
  assign res = temp;
  always @( op)
    begin
      if(op)
        temp = 0;
      else
        temp = 1;
    end


  // User logic ends

endmodule
