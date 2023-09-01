module vending_machine_8989(
  input clk,
  input rst,
  input[2:0] in, //001=10rs, 010=20rs, 011=30rs, 100=40rs, 101=50rs
  input [2:0] p, //001=product1, 010=product2, 011=product3
  output reg out,
  output reg[2:0] change);
parameter s0 = 3'b000;//0rs
parameter s1 = 3'b001;//10rs
parameter s2 = 3'b010;//20rs
parameter s3 = 3'b011;//50rs
parameter s4 = 3'b100;//30rs
parameter s5 = 3'b101;//60rs
parameter s6 = 3'b110;//70rs
parameter s7 = 3'b111;//40rs
  reg[2:0] c_state, n_state;
  always@(posedge clk)
    begin
      if(rst==1)
        begin
          c_state = 0;
          n_state = 0;
          change = 3'b000;
        end
      else
        c_state = n_state;
      if(p==3'b001)
        begin
          case(c_state)
            s0:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 0;
                  change = 3'b000;
                end
            else if(in==3'b001)
              begin
                n_state=s1;
                out=0;
                change=3'b000;
              end
            else if(in==3'b010)
              begin
                n_state = s2;
                out = 0;
                change = 3'b000;
              end
            else if(in==3'b011)
              begin
                n_state = s3;
                out = 0;
                change = 3'b000;
              end
            s1:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b000;
                end
            s2:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b001;
                end
            s3:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b100;
                end
          endcase
        end
      else if(p==3'b010)
        begin
          case(c_state)
            s0:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 0;
                  change = 3'b000;
                end
            else if(in==3'b001)
              begin
                n_state=s1;
                out=0;
                change=3'b000;
              end
            else if(in==3'b010)
              begin
                n_state = s2;
                out = 0;
                change = 3'b000;
              end
            else if(in==3'b011)
              begin
                n_state = s3;
                out = 0;
                change = 3'b000;
              end
            s1:
              if(in==3'b001)
                begin	
                  n_state = s2;
                  out = 0;
                  change = 3'b000;
                end
            else if(in==3'b010)
                begin	
                  n_state = s4;
                  out = 0;
                  change = 3'b000;
                end
            else if(in==3'b101)
                begin	
                  n_state = s5;
                  out = 0;
                  change = 3'b000;
                end
            		
            
            s2:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b000;
                end
            
            s3:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b011;
                end
            s4:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b001;
                end
            s5:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b100;
                end
          endcase
        end
      else if(p==3'b011)
        begin
          case(c_state)
            s0:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 0;
                  change = 3'b000;
                end
            else if(in==3'b001)
              begin
                n_state=s1;
                out=0;
                change=3'b000;
              end
            else if(in==3'b010)
              begin
                n_state = s2;
                out = 0;
                change = 3'b000;
              end
            else if(in==3'b011)
              begin
                n_state = s3;
                out = 0;
                change = 3'b000;
              end
            s1:
              if(in==001)
                begin	
                  n_state = s2;
                  out = 1;
                  change = 3'b000;
                end
            else if(in==010)
                begin	
                  n_state = s4;
                  out = 0;
                  change = 3'b000;
                end
            else if(in==011)
                begin	
                  n_state = s5;
                  out = 0;
                  change = 3'b000;
                end
            s2:
              if(in==001)
                begin	
                  n_state = s4;
                  out = 1;
                  change = 3'b000;
                end
            else if(in==010)
                begin	
                  n_state = s7;
                  out = 0;
                  change = 3'b000;
                end
            else if(in==011)
                begin	
                  n_state = s6;
                  out = 0;
                  change = 3'b000;
                end
            s3:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b010;
                end
            s4:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b000;
                end
            s5:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b011;
                end
            s6:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b100;
                end
            s7:
              if(in==0)
                begin	
                  n_state = s0;
                  out = 1;
                  change = 3'b001;
                end
            
          endcase
        end
            
    end
endmodule
              
      
  
  
  

  
  
  
