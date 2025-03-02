////////////////////////////////////////////////////////////////////////////////
// Tyler Anderson Fri Mar 22 11:01:50 EDT 2019
//
// iter_integer_linear_calc.v
//
// This was originally written for spi_master, but is generically useful. It
// iteriatively calculates the equation y = m*x + b, for integer values of m, x
// and b. Therby, it avoids the use of a multiplier.
//
// Iteration occurs over the x variable, and so the module requires x clock
// cycles in order to evaluate.
//
// The module automatically begins execuation any time that one of m, x, or b
// change. The valid outupt then deassertsindicates that the
//
// This module does not protect against overflow.
////////////////////////////////////////////////////////////////////////////////

module iter_integer_linear_calc
  (
   input 	 clk, // line values
   input 	 rst, // reset, active high
   input 	 wr, // calculate a new value
   input [31:0]  m, // slope
   input [31:0]  x, // abscissa
   input [31:0]  b, // intercept
   output reg [31:0] y = 0, // ordinate
   output reg 	 valid = 0
   );

   /////////////////////////////////////////////////////////////////////////////
   // Internals
   reg [31:0] 	     i_m_0 = 0;
   reg [31:0] 	     i_x_0 = 0;
   reg [31:0] 	     i_dy = 0;
   reg [31:0] 	     cnt = 0;

   /////////////////////////////////////////////////////////////////////////////
   // FSM definitions
   reg [0:0] fsm;
   localparam
     S_IDLE=0,
     S_CALC=1;

`ifdef MODEL_TECH // This works well for modelsim
   reg [127:0] state_str;
   always @(*)
     case(fsm)
       S_IDLE: state_str = "S_IDLE";
       S_CALC: state_str = "S_CALC";
     endcase // case (fsm)
`endif

   /////////////////////////////////////////////////////////////////////////////
   // Output assignments
   wire[31:0] next_y = i_dy + b;
   wire next_valid = fsm==S_IDLE && (i_m_0 == m) && (i_x_0 == x);
   // register outputs
   always @(posedge clk) begin
     if (rst) begin
       y <= 0;
       valid <= 0;
     end

     else begin
       y <= next_y;
       valid <= next_valid;
     end
   end

   /////////////////////////////////////////////////////////////////////////////
   // FSM Flow
   // always @(posedge clk or posedge rst)
   always @(posedge clk)
     if(rst)
       begin
	  fsm <= S_IDLE;
	  i_dy <= 0;
	  cnt <= 0;
    i_m_0 <= 0;
    i_x_0 <= 0;
       end
     else
       case(fsm)

	 S_IDLE:
	   begin
	      cnt <= 0;
	      if(wr && (i_m_0 != m || i_x_0 != x))
		begin
		   i_m_0 <= m;
		   i_x_0 <= x;
		   i_dy <= 0;
		   fsm <= S_CALC;
		end
	   end // case: S_IDLE

	 S_CALC:
	   begin
	      i_dy <= i_dy + i_m_0;
	      cnt <= cnt + 1;
	      if(cnt == i_x_0-1)
		fsm <= S_IDLE;
	   end

       endcase // case (fsm)

endmodule
