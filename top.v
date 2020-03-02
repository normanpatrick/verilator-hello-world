`default_nettype none

module top (clk,
            detected
            );
   input  clk;
   output detected;

   reg [3:0]       counter;
   reg [1:0]       shifter;
   wire            detected;

   always @(posedge clk) begin
      counter <= counter + 1;
      shifter <= {shifter[0], counter[3]};
   end
   assign detected = shifter[0] & ~shifter[1];
endmodule
