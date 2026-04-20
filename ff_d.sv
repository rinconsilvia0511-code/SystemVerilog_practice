module ff_d ( 
    input logic clk, en, rst,
    input logic d,
    output logic q
);
// D flip-flop with enable and asynchronous  reset active-high
    always_ff @ (posedge clk, posedge rst) begin
        if (rst) 
            q <= 0;
        else if (en) 
            q <= d;
    end
