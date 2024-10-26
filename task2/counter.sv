module counter#(
    parameter WIDTH = 8
)(
    //Counts down based on button value

    //Interface Signals
    input logic clk,  //clock
    input logic rst,  //reset
    input logic en,  //counter enable
    input logic [WIDTH-1:0] incr,
    output logic [WIDTH-1:0] dout  //counter output
);

always_ff @(posedge clk, posedge en)
    if (rst) dout <= {WIDTH{1'b0}};
    else  dout <= dout + incr;


endmodule
