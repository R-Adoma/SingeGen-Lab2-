module sinegen #(
    parameter A_WIDTH = 8,
              D_WIDTH = 8
)(
    //interface signals
    input logic clk,
    input logic rst,
    input logic en,
    input logic [D_WIDTH-1:0] incr, //incement for addr counter
    output logic [D_WIDTH-1:0] dout
);

    logic [A_WIDTH-1:0] address; //increment wire

counter addrCounter (
    .clk (clk),
    .rst (rst),
    .en (en),
    .incr (incr),
    .dout (address)
);

rom sineRom (
    .clk (clk),
    .addr (address),
    .dout (dout)
);
endmodule
