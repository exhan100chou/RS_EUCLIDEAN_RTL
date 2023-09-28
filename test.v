module test(syn,
				  	 clk,reset,start,
				deg_Ro,deg_Qo,stop_o,Rout,Qout,Lout,Uout,
					Rin,Qin,Lin,Uin,
					start_eu,
			       deg_Ri,deg_Qi,
					stop_i,st_out,
					count,
					
					
					err_loc0,err_loc1,err_loc2,err_loc3,err_loc4,err_loc5,err_loc6,err_loc7,err_loc8,err_loc9,
         err_loc10,err_loc11,err_loc12,err_loc13,err_loc14,err_loc15,
					
				sigma16,sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,sigma9,
         sigma10,sigma11,sigma12,sigma13,sigma14,sigma15,

				omega0,omega1,omega2,omega3,omega4,omega5,omega6,omega7,omega8,omega9,
         omega10,omega11,omega12,omega13,omega14,omega15,

add16,add1,add2,add3,add4,add5,add6,add7,add8,add9,
         add10,add11,add12,add13,add14,add15,



sum16,sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,
         sum10,sum11,sum12,sum13,sum14,sum15
					
					
					
					);//error number		
input [7:0]syn;

/*S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,
					 S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
					 S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,
					 S31,S32*/
input clk,reset,start;
					
					
output [7:0]Rin,Qin,Lin,Uin	;
output start_eu,stop_i,stop_o,st_out;
output [10:0]count;
output [7:0]Rout,Qout,Lout,Uout;
output [5:0]deg_Ro,deg_Qo,deg_Ri,deg_Qi;

wire [5:0]deg_Ri=6'd32;
wire [5:0]deg_Qi=6'd31;

wire [7:0]zero=8'b0;

wire [7:0]Lin=0;
reg [10:0]count;
reg [7:0]Rin,Uin,Qin;	//registor will lag for one unit time,
                    //so initial value of Rin is one
                    //Uin will take one unit time earlier 
reg start_eu; //-- "0" for locked leading coeff.



reg stop_i;
//assign stop_i=1'b0;




wire [5:0]deg_Ro,deg_Qo;
wire stop_o,st_out;
wire [7:0]Rout,Qout,Lout,Uout;










//--chien--------
reg [7:0]err_loc0,err_loc1,err_loc2,err_loc3,err_loc4,err_loc5,err_loc6,err_loc7,err_loc8,err_loc9,
         err_loc10,err_loc11,err_loc12,err_loc13,err_loc14,err_loc15/*synthesis keep*/;


output [7:0]err_loc0,err_loc1,err_loc2,err_loc3,err_loc4,err_loc5,err_loc6,err_loc7,err_loc8,err_loc9,
         err_loc10,err_loc11,err_loc12,err_loc13,err_loc14,err_loc15/*synthesis keep*/;


output [7:0]sigma16,sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,sigma9,
         sigma10,sigma11,sigma12,sigma13,sigma14,sigma15/*synthesis keep*/;


wire [7:0]sigma16,sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,sigma9,
         sigma10,sigma11,sigma12,sigma13,sigma14,sigma15/*synthesis keep*/;
reg sel_ch/*synthesis keep*/;
wire enable_cs=1'b1;


wire [7:0]dsigma1,dsigma2,dsigma3,dsigma4,dsigma5,dsigma6,dsigma7,dsigma8,dsigma9,
         dsigma10,dsigma11,dsigma12,dsigma13,dsigma14,dsigma15,dsigma16/*synthesis keep*/;


//----------
reg [7:0]omega0,omega1,omega2,omega3,omega4,omega5,omega6,omega7,omega8,omega9,
         omega10,omega11,omega12,omega13,omega14,omega15/*synthesis keep*/;


output [7:0]omega0,omega1,omega2,omega3,omega4,omega5,omega6,omega7,omega8,omega9,
         omega10,omega11,omega12,omega13,omega14,omega15/*synthesis keep*/;


output [7:0]sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,
         sum10,sum11,sum12,sum13,sum14,sum15,sum16/*synthesis keep*/;


wire [7:0]sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,
         sum10,sum11,sum12,sum13,sum14,sum15,sum16/*synthesis keep*/;




wire [7:0]inv1,inv2,inv3,inv4,inv5,inv6,inv7,inv8,inv9,
         inv10,inv11,inv12,inv13,inv14,inv15,inv16/*synthesis keep*/;



wire [7:0]add1,add2,add3,add4,add5,add6,add7,add8,add9,
         add10,add11,add12,add13,add14,add15,add16/*synthesis keep*/;

output [7:0]add1,add2,add3,add4,add5,add6,add7,add8,add9,
         add10,add11,add12,add13,add14,add15,add16/*synthesis keep*/;



//---


euclidean_4cells euclidean(
                  .deg_Ri(deg_Ri),.deg_Qi(deg_Qi),.stop_i(stop_i),//1,stop_i2,
                  .Rin(Rin),.Qin(Qin),.Lin(Lin),.Uin(Uin),.start(start_eu),.start_cnt(start),//input
                  .deg_Ro(deg_Ro),.deg_Qo(deg_Qo),.stop_o(stop_o),//1,stop_o2,
			   .Rout(Rout),.Qout(Qout),.Lout(Lout),.Uout(Uout),.st_out(st_out),//output
			   .clk(clk),.reset(reset));

chien_search_p16_t16 chien1(
     .lambda0(err_loc0),.lambda1(err_loc1),.lambda2(err_loc2),.lambda3(err_loc3),
	.lambda4(err_loc4),.lambda5(err_loc5),.lambda6(err_loc6),.lambda7(err_loc7),
	.lambda8(err_loc8),.lambda9(err_loc9),.lambda10(err_loc10),.lambda11(err_loc11),.lambda12(err_loc12),.lambda13(err_loc13),
	.lambda14(err_loc14),.lambda15(err_loc15),//input
	    .sigma1(sigma1), 
        .sigma2(sigma2), 
        .sigma3(sigma3), 
        .sigma4(sigma4), 
        .sigma5(sigma5), 
        .sigma6(sigma6), 
        .sigma7(sigma7), 
        .sigma8(sigma8), 
        .sigma9(sigma9), 
        .sigma10(sigma10), 
        .sigma11(sigma11), 
        .sigma12(sigma12), 
        .sigma13(sigma13), 
        .sigma14(sigma14), 
        .sigma15(sigma15), 
        .sigma16(sigma16), //outputs
     .sel(sel_ch),
     .enable(enable_cs),
	.clk(clk),
	.reset(reset));
	//.start(start));
	
omega_p16_t16 omega(.omega0(omega0),.omega1(omega1),.omega2(omega2),.omega3(omega3),.omega4(omega4),.omega5(omega5),
					.omega6(omega6),.omega7(omega7),.omega8(omega8),.omega9(omega9),.omega10(omega10),
					.omega11(omega11),.omega12(omega12),.omega13(omega13),.omega14(omega14),.omega15(omega15),
        .sum1 (sum1), 
        .sum2 (sum2), 
        .sum3 (sum3), 
        .sum4 (sum4), 
        .sum5 (sum5), 
        .sum6 (sum6), 
        .sum7 (sum7), 
        .sum8 (sum8), 
        .sum9 (sum9), 
        .sum10(sum10), 
        .sum11(sum11), 
        .sum12(sum12), 
        .sum13(sum13), 
        .sum14(sum14), 
        .sum15(sum15), 
        .sum16(sum16), 
     .sel(sel_ch),
     .enable(enable_cs),
	.clk(clk),
	.reset(reset));
	
chien_search_p16_t16 chien2(
     .lambda0(err_loc1),.lambda1(zero),.lambda2(err_loc3),.lambda3(zero),
	.lambda4(err_loc5),.lambda5(zero),.lambda6(err_loc7),.lambda7(zero),
	.lambda8(err_loc9),.lambda9(zero),.lambda10(err_loc11),.lambda11(zero),.lambda12(err_loc13),.lambda13(zero),
	.lambda14(err_loc15),.lambda15(zero),
	    .sigma1(dsigma1), 
        .sigma2(dsigma2), 
        .sigma3(dsigma3), 
        .sigma4(dsigma4), 
        .sigma5(dsigma5), 
        .sigma6(dsigma6), 
        .sigma7(dsigma7), 
        .sigma8(dsigma8), 
        .sigma9(dsigma9), 
        .sigma10(dsigma10), 
        .sigma11(dsigma11), 
        .sigma12(dsigma12), 
        .sigma13(dsigma13), 
        .sigma14(dsigma14), 
        .sigma15(dsigma15), 
        .sigma16(dsigma16), 
     .sel(sel_ch),
     .enable(enable_cs),
	.clk(clk),
	.reset(reset));
	
	
	

forney f1(.dsigma(dsigma1),.sigma(sigma1),.sum(sum1),.clk(clk),.reset(reset),.out(add1));
forney f2(.dsigma(dsigma2),.sigma(sigma2),.sum(sum2),.clk(clk),.reset(reset),.out(add2));
forney f3(.dsigma(dsigma3),.sigma(sigma3),.sum(sum3),.clk(clk),.reset(reset),.out(add3));
forney f4(.dsigma(dsigma4),.sigma(sigma4),.sum(sum4),.clk(clk),.reset(reset),.out(add4));
forney f5(.dsigma(dsigma5),.sigma(sigma5),.sum(sum5),.clk(clk),.reset(reset),.out(add5));
forney f6(.dsigma(dsigma6),.sigma(sigma6),.sum(sum6),.clk(clk),.reset(reset),.out(add6));
forney f7(.dsigma(dsigma7),.sigma(sigma7),.sum(sum7),.clk(clk),.reset(reset),.out(add7));
forney f8(.dsigma(dsigma8),.sigma(sigma8),.sum(sum8),.clk(clk),.reset(reset),.out(add8));
forney f9(.dsigma(dsigma9),.sigma(sigma9),.sum(sum9),.clk(clk),.reset(reset),.out(add9));
forney f10(.dsigma(dsigma10),.sigma(sigma10),.sum(sum10),.clk(clk),.reset(reset),.out(add10));
forney f11(.dsigma(dsigma11),.sigma(sigma11),.sum(sum11),.clk(clk),.reset(reset),.out(add11));
forney f12(.dsigma(dsigma12),.sigma(sigma12),.sum(sum12),.clk(clk),.reset(reset),.out(add12));
forney f13(.dsigma(dsigma13),.sigma(sigma13),.sum(sum13),.clk(clk),.reset(reset),.out(add13));
forney f14(.dsigma(dsigma14),.sigma(sigma14),.sum(sum14),.clk(clk),.reset(reset),.out(add14));
forney f15(.dsigma(dsigma15),.sigma(sigma15),.sum(sum15),.clk(clk),.reset(reset),.out(add15));
forney f16(.dsigma(dsigma16),.sigma(sigma16),.sum(sum16),.clk(clk),.reset(reset),.out(add16));





			
					
always@(posedge clk or negedge reset)//--------euclidean ------------------------
begin
  if(!reset)
    begin
      Rin <=#1 8'b0;
      Uin <=#1 8'b0;
      start_eu <=#1 1'b1;
      count    <=#1 11'b0;
      stop_i   <=#1 1'b0;
 
    end

else if(start==1)


begin 
    if(count== 11'd0)// && start==0)~~ and module must add start port
    begin
	    Rin <=#1 8'b1;
	    Uin <=#1 8'b0;
	    start_eu <=#1 1'b0;
	    stop_i <=#1 1'b0;
	Qin<=#1 syn;
    end
    else if(count==11'd1)
    begin
        Rin <=#1 8'b0;
	    Uin <=#1 8'b0;
	    start_eu <=#1 1'b1;
	    stop_i <=#1 1'b0;
	Qin <=#1 syn;
    end
    else if(count>11'd1 && count<11'd31)
    begin
      Rin <=#1 8'b0;
	    Uin <=#1 8'b0;
	    start_eu <=#1 1'b1;
	    stop_i <=#1 1'b0;
	Qin <=#1 syn;
	    //count=count+1;
    end
    else if(count==11'd31)
    begin
      Rin <=#1 8'b0;
	    Uin <=#1 8'b1;
	    start_eu <=#1 1'b1;
	    stop_i <=#1 1'b0;
	Qin <=#1 syn;
    end

else if(count==11'd31)
begin
      Rin <=#1 8'b0;
	    Uin <=#1 8'b0;
	    start_eu <=#1 1'b1;
    stop_i <=#1 stop_o;
	Qin <=#1 syn;
    end


    if(count==11'd1100)
    begin
       count <=#1 11'b0;
    end
    else
    	 count <=#1 count+11'b1;

end //else if
else
begin
      Rin <=#1 Rin;
      Uin <=#1 Uin;
      start_eu <=#1 start_eu;
      count    <=#1 count;
 //     stop_i   <=#1 stop_i;

end



end//always--eu---------------------------------------

















always@(posedge clk or negedge reset)
begin

if(!reset)
begin

err_loc0 <=#1 8'b0;
err_loc1 <=#1 8'b0;
err_loc2 <=#1 8'b0;
err_loc3 <=#1 8'b0;
err_loc4 <=#1 8'b0;
err_loc5 <=#1 8'b0;
err_loc6 <=#1 8'b0;
err_loc7 <=#1 8'b0;
err_loc8 <=#1 8'b0;
err_loc9 <=#1 8'b0;
err_loc10 <=#1 8'b0;
err_loc11 <=#1 8'b0;
err_loc12 <=#1 8'b0;
err_loc13 <=#1 8'b0;
err_loc14 <=#1 8'b0;
err_loc15 <=#1 8'b0;



omega0 <=#1 8'b0;
omega1 <=#1 8'b0;
omega2 <=#1 8'b0;
omega3 <=#1 8'b0;
omega4 <=#1 8'b0;
omega5 <=#1 8'b0;
omega6 <=#1 8'b0;
omega7 <=#1 8'b0;
omega8 <=#1 8'b0;
omega9 <=#1 8'b0;
omega10 <=#1 8'b0;
omega11 <=#1 8'b0;
omega12 <=#1 8'b0;
omega13 <=#1 8'b0;
omega14 <=#1 8'b0;
omega15 <=#1 8'b0;

sel_ch <=#1 1'b1;




end
else if(start==1 & enable_cs)
begin
err_loc0  <=#1 Uout;
err_loc1  <=#1 err_loc0 ;
err_loc2  <=#1 err_loc1 ;
err_loc3  <=#1 err_loc2 ;
err_loc4  <=#1 err_loc3 ;
err_loc5  <=#1 err_loc4 ;
err_loc6  <=#1 err_loc5 ;
err_loc7  <=#1 err_loc6 ;
err_loc8  <=#1 err_loc7 ;
err_loc9  <=#1 err_loc8 ;
err_loc10 <=#1 err_loc9 ;
err_loc11 <=#1 err_loc10;
err_loc12 <=#1 err_loc11;
err_loc13 <=#1 err_loc12;
err_loc14 <=#1 err_loc13;
err_loc15 <=#1 err_loc14;

omega0  <=#1 Qout;
omega1  <=#1 omega0 ;
omega2  <=#1 omega1 ;
omega3  <=#1 omega2 ;
omega4  <=#1 omega3 ;
omega5  <=#1 omega4 ;
omega6  <=#1 omega5 ;
omega7  <=#1 omega6 ;
omega8  <=#1 omega7 ;
omega9  <=#1 omega8 ;
omega10 <=#1 omega9 ;
omega11 <=#1 omega10;
omega12 <=#1 omega11;
omega13 <=#1 omega12;
omega14 <=#1 omega13;
omega15 <=#1 omega14;

	if(count==11'd253)//82//56)	//*****************************
		begin
		   sel_ch <=#1 1'b0;
		end
	
	else
		begin
   			sel_ch <=#1 1'b1;
		end

end //else if(rstn==1)
else
	begin
err_loc0  <=#1 err_loc0 ;
err_loc1  <=#1 err_loc1 ;
err_loc2  <=#1 err_loc2 ;
err_loc3  <=#1 err_loc3 ;
err_loc4  <=#1 err_loc4 ;
err_loc5  <=#1 err_loc5 ;
err_loc6  <=#1 err_loc6 ;
err_loc7  <=#1 err_loc7 ;
err_loc8  <=#1 err_loc8 ;
err_loc9  <=#1 err_loc9 ;
err_loc10 <=#1 err_loc10;
err_loc11 <=#1 err_loc11;
err_loc12 <=#1 err_loc12;
err_loc13 <=#1 err_loc13;
err_loc14 <=#1 err_loc14;
err_loc15 <=#1 err_loc15;


omega0  <=#1 omega0 ;
omega1  <=#1 omega1 ;
omega2  <=#1 omega2 ;
omega3  <=#1 omega3 ;
omega4  <=#1 omega4 ;
omega5  <=#1 omega5 ;
omega6  <=#1 omega6 ;
omega7  <=#1 omega7 ;
omega8  <=#1 omega8 ;
omega9  <=#1 omega9 ;
omega10 <=#1 omega10;
omega11 <=#1 omega11;
omega12 <=#1 omega12;
omega13 <=#1 omega13;
omega14 <=#1 omega14;
omega15 <=#1 omega15;

sel_ch <=#1 sel_ch;

end
end//always--chien







				
endmodule