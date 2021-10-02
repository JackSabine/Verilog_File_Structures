module arbiter(
    input reset, clock,
    input R0, R1,  // request lines 
    output reg G0, G1 // grant lines 
);

parameter [1:0] // synopsys enum states
    IDLE = 2'b00,
    G0_ONLY = 2'b01,
    G1_ONLY = 2'b10,
    G0_QUEUE = 2'b11;

reg [1:0] /* synopsys enum states */ current_state, next_state;
// synopsys state_vector current_state

/*------ State Assignment with synchronous reset ------*/
always @(posedge clock) begin
    if(!reset) current_state <= IDLE;
    else       current_state <= next_state;
end

always @(*) begin
    {G0, G1} = 2'b00;
    
    case(current_state)
    IDLE: begin
        casex ({R0, R1})
            2'b00:      next_state = IDLE;
            2'b01:      next_state = G1_ONLY;
            2'b10:      next_state = G0_ONLY;
            2'b11:      next_state = G0_QUEUE; 
            default:    next_state = 2'bxx;
        endcase   
    end

    G0_ONLY: begin
        G0 = 1'b1;
        casex ({R0, R1})
            2'b00:      next_state = IDLE;
            2'b01:      next_state = G1_ONLY;
            2'b10:      next_state = G0_ONLY;
            2'b11:      next_state = G0_QUEUE; 
            default:    next_state = 2'bxx;
        endcase   
    end

    G1_ONLY: begin
        G1 = 1'b1;
        casex ({R0, R1})
            2'b00:      next_state = IDLE;
            2'b01:      next_state = G1_ONLY;
            2'b10:      next_state = G0_ONLY;
            2'b11:      next_state = G0_QUEUE; 
            default:    next_state = 2'bxx;
        endcase   
    end

    G0_QUEUE: begin
        G0 = 1'b1;
        next_state = G1_ONLY;        
    end

    endcase
end

endmodule