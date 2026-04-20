module ff_d_sync (
    input logic clk, en, rst,
    input logic d,
    output logic q
);
// D flip-flop with enable and synchronous reset active-low
always_ff @( clk ) begin
    if (!rst) 
        q <= 0;
    else if (en) 
        q <= d;
end