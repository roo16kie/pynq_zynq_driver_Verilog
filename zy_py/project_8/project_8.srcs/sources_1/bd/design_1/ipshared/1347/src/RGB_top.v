module RGB_top (
    input       clk,
    input       rst,
    input [1:0] sw,
    output			R_out,
    output			G_out,
    output			B_out
);

  wire [7:0] R_time, G_time, B_time;

  Decoder dec_i (
    .sw ( sw ),
    .R_time_out ( R_time ),
    .G_time_out ( G_time ),
    .B_time_out ( B_time )
  );

  RGB_LED rgb_i (
    .clk ( clk ),
    .rst ( rst ),
    .R_time_in ( R_time ),
    .G_time_in ( G_time ),
    .B_time_in ( B_time ),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out )
  );

endmodule // RGB_top
