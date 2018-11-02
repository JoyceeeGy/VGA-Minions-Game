module background(




   input [9:0] x,




   input [9:0] y,




   input [7:0]scan_code,




   input CLK,




   output [0:6]HEX7, HEX6, HEX5, HEX4,




   input scan_ready,




   output [9:0] color_r,




   output [9:0] color_g,




   output [9:0] color_b,

	

	output reg[3:0]minion_1counts, minion_2counts);




 




   assign color_r = minion_on?minion_r:(minion_on2?minion_r2:(cake_on? cake_r: 10'h3ff));




   assign color_g = minion_on?minion_g:(minion_on2?minion_g2:(cake_on? cake_g: 10'h3ff));




   assign color_b = minion_on?minion_b:(minion_on2?minion_b2:(cake_on? cake_b: 10'h3ff));

 











    parameter H_PIXEL = 10'd480;




   parameter W_PIXEL = 10'd640;










 wire cake_on = (cake_on1 && ~(cake_off11 || cake_off12)) | (cake_on2 && ~(cake_off21 || cake_off22)) | (cake_on3 && ~(cake_off31 || cake_off32)) | (cake_on4 && ~(cake_off41 || cake_off42)) | (cake_on5 && ~(cake_off51 || cake_off52))||(cake_on6 && ~(cake_off61 || cake_off62))||(cake_on7 && ~(cake_off71 || cake_off72))||(cake_on8 && ~(cake_off81 || cake_off82))||(cake_on9 && ~(cake_off91 || cake_off92))||(cake_on10 && ~(cake_off101 || cake_off102)) ||(cake_on11 && ~(cake_off111 || cake_off112)) ||(cake_on12 && ~(cake_off121 || cake_off122)) ;




 reg cake_on1=0, cake_on2=0, cake_on3=0, cake_on4=0, cake_on5=0, cake_on6=0, cake_on7=0, cake_on8=0, cake_on9=0, cake_on10=0, cake_on11=0, cake_on12=0;




 




  //cake




  parameter cake_x_init1 = 20;




  parameter cake_y_init1 = 20;




  parameter cake_x_init2 = 160;




  parameter cake_y_init2 = 20;




  parameter cake_x_init3 = 300;




  parameter cake_y_init3 = 20;




  parameter cake_x_init4 = 440;




  parameter cake_y_init4 = 20;




  parameter cake_x_init5 = 580;




  parameter cake_y_init5 = 20;

  

  

  parameter cake_x_init6 = 90;




  parameter cake_y_init6 = 100;

  

  parameter cake_x_init7 = 230;




  parameter cake_y_init7 = 100;

  

  parameter cake_x_init8 = 370;




  parameter cake_y_init8 = 100;

  

  parameter cake_x_init9 = 510 ;




  parameter cake_y_init9 = 100;

  
  parameter cake_x_init10 = 160;


  parameter cake_y_init10 = 180;

  
  parameter cake_x_init11 = 300;

  parameter cake_y_init11 = 180;
  
  parameter cake_x_init12 = 440;


  parameter cake_y_init12 = 180;


 




  reg [9:0]cake_r, cake_g, cake_b;




  reg [9:0] cake_x1 = cake_x_init1;




  reg [9:0] cake_y1 = cake_y_init1;




  reg [9:0] cake_x2 = cake_x_init2;




  reg [9:0] cake_y2 = cake_y_init2;




  reg [9:0] cake_x3 = cake_x_init3;




  reg [9:0] cake_y3 = cake_y_init3;




  reg [9:0] cake_x4 = cake_x_init4;




  reg [9:0] cake_y4 = cake_y_init4;




  reg [9:0] cake_x5 = cake_x_init5;




  reg [9:0] cake_y5 = cake_y_init5;




  reg [9:0] cake_x6 = cake_x_init6;




  reg [9:0] cake_y6 = cake_y_init6;

  

  reg [9:0] cake_x7 = cake_x_init7;




  reg [9:0] cake_y7 = cake_y_init7;

  

  reg [9:0] cake_x8 = cake_x_init8;




  reg [9:0] cake_y8 = cake_y_init8;

  

  reg [9:0] cake_x9 = cake_x_init9;




  reg [9:0] cake_y9 = cake_y_init9;

  reg [9:0] cake_x10 = cake_x_init10;




  reg [9:0] cake_y10 = cake_y_init10;
  
  reg [9:0] cake_x11 = cake_x_init11;




  reg [9:0] cake_y11 = cake_y_init11;
  
  reg [9:0] cake_x12 = cake_x_init12;




  reg [9:0] cake_y12 = cake_y_init12;




  wire [9:0] wid = 10'd42;




  wire [9:0] hi = 10'd44;




 




  wire [9:0]x_1s = 10'd14, x_1e = 10'd28;




  wire [9:0]y_1e = 10'd14;




  wire [9:0]x_2s = 10'd8, x_2e = 10'd36;




  wire [9:0]y_2s = 10'd14, y_2e = 10'd28;




  wire [9:0]y_3s = 10'd28;




  always




  begin




  //first one

  //first level




  if (((x>cake_x1+x_1s)&&(y>cake_y1))&&((x<cake_x1+x_1e)&&y<cake_y1+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x1+x_2s&&y>cake_y1+y_2s)&&(x<cake_x1+x_2e&&y<cake_y1+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x1&&y>cake_y1+y_3s)&&(x<cake_x1+wid&&y<cake_y1+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

	  

  // ------------------------------------------

  //second one

  //first level

   

  end else if (((x>cake_x2+x_1s)&&(y>cake_y2))&&((x<cake_x2+x_1e)&&y<cake_y2+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x2+x_2s&&y>cake_y2+y_2s)&&(x<cake_x2+x_2e&&y<cake_y2+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x2&&y>cake_y2+y_3s)&&(x<cake_x2+wid&&y<cake_y2+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

  //- - - - - - - - - - - -- - - - ---------------------

  //third one

  //first level

  end else if (((x>cake_x3+x_1s)&&(y>cake_y3))&&((x<cake_x3+x_1e)&&y<cake_y3+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x3+x_2s&&y>cake_y3+y_2s)&&(x<cake_x3+x_2e&&y<cake_y3+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x3&&y>cake_y3+y_3s)&&(x<cake_x3+wid&&y<cake_y3+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

//--------------------------------------------------------------------------

//forth one

//first level   

  end else if (((x>cake_x4+x_1s)&&(y>cake_y4))&&((x<cake_x4+x_1e)&&y<cake_y4+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x4+x_2s&&y>cake_y4+y_2s)&&(x<cake_x4+x_2e&&y<cake_y4+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x4&&y>cake_y4+y_3s)&&(x<cake_x4+wid&&y<cake_y4+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

	  

  // ---------------------------------------

  //fifth one

  //first level

   

  end else if (((x>cake_x5+x_1s)&&(y>cake_y5))&&((x<cake_x5+x_1e)&&y<cake_y5+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x5+x_2s&&y>cake_y5+y_2s)&&(x<cake_x5+x_2e&&y<cake_y5+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x5&&y>cake_y5+y_3s)&&(x<cake_x5+wid&&y<cake_y5+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

	  

  //-------------------------------

  //sixth one

  //first level

  

  end else if (((x>cake_x6+x_1s)&&(y>cake_y6))&&((x<cake_x6+x_1e)&&y<cake_y6+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x6+x_2s&&y>cake_y6+y_2s)&&(x<cake_x6+x_2e&&y<cake_y6+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x6&&y>cake_y6+y_3s)&&(x<cake_x6+wid&&y<cake_y6+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

	  

  // --------------------------

  //seventh one

  //first level

  

  end else 

  if (((x>cake_x7+x_1s)&&(y>cake_y7))&&((x<cake_x7+x_1e)&&y<cake_y7+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x7+x_2s&&y>cake_y7+y_2s)&&(x<cake_x7+x_2e&&y<cake_y7+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x7&&y>cake_y7+y_3s)&&(x<cake_x7+wid&&y<cake_y7+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

  // ---------------------------

  //eighth one

  //first level

  end else 

  if (((x>cake_x8+x_1s)&&(y>cake_y8))&&((x<cake_x8+x_1e)&&y<cake_y8+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x8+x_2s&&y>cake_y8+y_2s)&&(x<cake_x8+x_2e&&y<cake_y8+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x8&&y>cake_y8+y_3s)&&(x<cake_x8+wid&&y<cake_y8+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

	  

  // ----------------------------------

  //ninth one

  end else 

  if (((x>cake_x9+x_1s)&&(y>cake_y9))&&((x<cake_x9+x_1e)&&y<cake_y9+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x9+x_2s&&y>cake_y9+y_2s)&&(x<cake_x9+x_2e&&y<cake_y9+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x9&&y>cake_y9+y_3s)&&(x<cake_x9+wid&&y<cake_y9+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;






  end else if (((x>cake_x10+x_1s)&&(y>cake_y10))&&((x<cake_x10+x_1e)&&y<cake_y10+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x10+x_2s&&y>cake_y10+y_2s)&&(x<cake_x10+x_2e&&y<cake_y10+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x10&&y>cake_y10+y_3s)&&(x<cake_x10+wid&&y<cake_y10+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;
	  
  end else if (((x>cake_x11+x_1s)&&(y>cake_y11))&&((x<cake_x11+x_1e)&&y<cake_y11+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x11+x_2s&&y>cake_y11+y_2s)&&(x<cake_x11+x_2e&&y<cake_y11+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x11&&y>cake_y11+y_3s)&&(x<cake_x11+wid&&y<cake_y11+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;
	  
 end else if (((x>cake_x12+x_1s)&&(y>cake_y12))&&((x<cake_x12+x_1e)&&y<cake_y12+y_1e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h190;




     cake_b <= 10'h200;




  //second level




  end else if ((x>cake_x12+x_2s&&y>cake_y12+y_2s)&&(x<cake_x12+x_2e&&y<cake_y12+y_2e))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h2C0;




     cake_b <= 10'h2CB;




  //third level




  end else if ((x>cake_x12&&y>cake_y12+y_3s)&&(x<cake_x12+wid&&y<cake_y12+hi))begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h105;




     cake_b <= 10'h180;

  	  

  end else begin




     cake_r <= 10'h3ff;




     cake_g <= 10'h3ff;




     cake_b <= 10'h3ff;
 end




  end




  reg cake_off11=0, cake_off21=0, cake_off31=0, cake_off41=0, cake_off51=0, cake_off61=0, cake_off71=0, cake_off81=0, cake_off91=0, cake_off101=0, cake_off111=0, cake_off121=0;

  reg cake_off12=0, cake_off22=0, cake_off32=0, cake_off42=0, cake_off52=0, cake_off62=0, cake_off72=0, cake_off82=0, cake_off92=0, cake_off102=0, cake_off112=0, cake_off122=0;

  reg [3:0] minion_1count=0, minion_2count=0;

  

  initial begin




   cake_off11 <= 0;




   cake_off21 <= 0;




   cake_off31 <= 0;




   cake_off41 <= 0;




   cake_off51 <= 0;

	

	cake_off61 <= 0;

	

	cake_off71 <= 0;

	

	cake_off81 <= 0;

	

	cake_off91 <= 0;

 

   cake_off12 <= 0;




   cake_off22 <= 0;




   cake_off32 <= 0;




   cake_off42 <= 0;




   cake_off52 <= 0;

	

	cake_off62 <= 0;

	

	cake_off72 <= 0;

	

	cake_off82 <= 0;

	

	cake_off92 <= 0;




   minion_1count <= 0;




   minion_2count <= 0;

   end




 




  always@(posedge CLK) begin

 minion_1count <= cake_off11 + cake_off21 + cake_off31 + cake_off41 + cake_off51 + cake_off61 + cake_off71 + cake_off81 + cake_off91 + cake_off101 + cake_off111 + cake_off121 ;

 minion_2count <= cake_off12 + cake_off22 + cake_off32 + cake_off42 + cake_off52 + cake_off62 + cake_off72 + cake_off82 + cake_off92 + cake_off102 + cake_off112 + cake_off122 ;

  if ((minion_1count + minion_2count == 12))begin

     minion_1counts <= minion_1count;

	  minion_2counts <= minion_2count;

  end

  

  if((x>cake_x1&&y>cake_y1)&&(x<(cake_x1+wid)&&y<(cake_y1+hi))) begin




    if (minion_on && ~cake_off12) begin




      cake_off11 <= 1;




    end else if(minion_on2 && ~cake_off11)begin




     cake_off12 <= 1;




    end




   cake_on1 <= 1;




    end else begin




     cake_on1 <= 0;




    end




 




if((x>cake_x2&&y>cake_y2)&&(x<(cake_x2+wid)&&y<(cake_y2+hi))) begin




    if (minion_on && ~cake_off22) begin




     cake_off21 <= 1;




    end else if(minion_on2 && ~cake_off21)begin




     cake_off22 <= 1;




    end




     cake_on2 <= 1;




    end else begin




      cake_on2 <= 0;




end




 

   if((x>cake_x3&&y>cake_y3)&&(x<(cake_x3+wid)&&y<(cake_y3+hi))) begin




    if (minion_on && ~cake_off32) begin




     cake_off31 <= 1;




    end else if(minion_on2  && ~cake_off31 )begin




     cake_off32 <= 1;




end




 cake_on3 <= 1;




end else begin




 cake_on3 <= 0;




end




  if((x>cake_x4&&y>cake_y4)&&(x<(cake_x4+wid)&&y<(cake_y4+hi))) begin




    if (minion_on  && ~cake_off42) begin




     cake_off41 <= 1;







    end else if(minion_on2  && ~cake_off41)begin




     cake_off42 <= 1;




end




 cake_on4 <= 1;




end else begin




 cake_on4 <= 0;




end










 




if((x>cake_x5&&y>cake_y5)&&(x<(cake_x5+wid)&&y<(cake_y5+hi))) begin




    if (minion_on  && ~cake_off52) begin




     cake_off51 <= 1;







    end else if(minion_on2  && ~cake_off51)begin




     cake_off52 <= 1;




end




 cake_on5 <= 1;




end else begin




 cake_on5 <= 0;




end







  

  

if((x>cake_x6&&y>cake_y6)&&(x<(cake_x6+wid)&&y<(cake_y6+hi))) begin




    if (minion_on && ~cake_off62) begin




      cake_off61 <= 1;




    end else if(minion_on2 && ~cake_off61)begin




     cake_off62 <= 1;




    end




   cake_on6 <= 1;




    end else begin




     cake_on6 <= 0;




    end

	 

	 

if((x>cake_x7&&y>cake_y7)&&(x<(cake_x7+wid)&&y<(cake_y7+hi))) begin




    if (minion_on && ~cake_off72) begin




      cake_off71 <= 1;




    end else if(minion_on2 && ~cake_off71)begin




     cake_off72 <= 1;




    end




   cake_on7 <= 1;




    end else begin




     cake_on7 <= 0;




    end

	 

if((x>cake_x8&&y>cake_y8)&&(x<(cake_x8+wid)&&y<(cake_y8+hi))) begin




    if (minion_on && ~cake_off82) begin




      cake_off81 <= 1;




    end else if(minion_on2 && ~cake_off81)begin




     cake_off82 <= 1;




    end




   cake_on8 <= 1;




    end else begin




     cake_on8 <= 0;




    end

	 

if((x>cake_x9&&y>cake_y9)&&(x<(cake_x9+wid)&&y<(cake_y9+hi))) begin




    if (minion_on && ~cake_off92) begin




      cake_off91 <= 1;




    end else if(minion_on2 && ~cake_off91)begin




     cake_off92 <= 1;




    end




   cake_on9 <= 1;




    end else begin




     cake_on9 <= 0;




       end

	 

if((x>cake_x10&&y>cake_y10)&&(x<(cake_x10+wid)&&y<(cake_y10+hi))) begin




    if (minion_on && ~cake_off102) begin




      cake_off101 <= 1;




    end else if(minion_on2 && ~cake_off101)begin




     cake_off102 <= 1;




    end




   cake_on10 <= 1;




    end else begin




     cake_on10 <= 0;

	    end

	 

if((x>cake_x11&&y>cake_y11)&&(x<(cake_x11+wid)&&y<(cake_y11+hi))) begin




    if (minion_on && ~cake_off112) begin




      cake_off111 <= 1;




    end else if(minion_on2 && ~cake_off111)begin




     cake_off112 <= 1;




    end




   cake_on11 <= 1;




    end else begin




     cake_on11 <= 0;


	 
	     end

	 

if((x>cake_x12&&y>cake_y12)&&(x<(cake_x12+wid)&&y<(cake_y12+hi))) begin




    if (minion_on && ~cake_off122) begin




      cake_off121 <= 1;




    end else if(minion_on2 && ~cake_off121)begin




     cake_off122 <= 1;




    end




   cake_on12 <= 1;




    end else begin




     cake_on12 <= 0;




    end

 end

 




hex_7seg hs1(minion_1count, HEX6);

hex_7seg2 hs12(minion_1count, HEX7);


hex_7seg he2(minion_2count, HEX4);

hex_7seg2 he22(minion_2count, HEX5);






  //minion character




   parameter origin_x_init = 20;




   parameter origin_y_init = 300;




  




   reg [9:0] origin_x = origin_x_init;




   reg [9:0] origin_y = origin_y_init;




   wire [9:0] width = 10'd70;




   wire [9:0] high = 10'd133;




   wire [9:0] movement = 10'd10;




   always @(posedge(scan_ready))




      case(scan_code)




         




      8'h75: origin_y2 <= origin_y2 - movement;//up




      8'h72: origin_y2 <= origin_y2 + movement;//down




      8'h74: origin_x2 <= origin_x2 + movement;//right




      8'h6B: origin_x2 <= origin_x2 - movement;//left




 




      8'h1D: origin_y <= origin_y - movement;//up




      8'h1B: origin_y <= origin_y + movement;//down




      8'h23: origin_x <= origin_x + movement;//right




      8'h1C: origin_x <= origin_x - movement;//left




    endcase




 




   wire minion_on = (x>origin_x&&y>origin_y)&&(x<(origin_x+width)&&y<(origin_y+high));




 




   reg [9:0]minion_r, minion_g, minion_b;




   reg [9:0]minion_r2, minion_g2, minion_b2;




   wire [9:0]cloth_y_s1 = 10'd77, cloth_y_e1 = 10'd119;




   wire [9:0]cloth_x_s1 = 10'd7, cloth_x_e1 = 10'd63;




   wire [9:0]cloth_y_s2 = 10'd70, cloth_y_e2 = 10'd77;




   wire [9:0]cloth_x_e2 = 10'd7;




   wire [9:0]not_clo_y_s = 10'd84, not_clo_y_e = 10'd91;




   wire [9:0]not_clo_x_s1 = 10'd7, not_clo_x_e1 = 10'd14;




   wire [9:0]not_clo_x_s2 = 10'd56, not_clo_x_e2 = 10'd63;




   wire[9:0]cloth_x_s3 = 10'd63;




   wire [9:0]glass_y_s = 10'd21, glass_y_e = 10'd35;




   wire [9:0]mouse_x_s = 10'd21, mouse_x_e = 10'd49;




   wire [9:0]mouse_y_s = 10'd63, mouse_y_e = 10'd70;




   wire [9:0]eye_outs_x_s1 = 10'd20, eye_outs_x_e1 = 10'd50;




   wire [9:0]eye_outs_y_s1 = 10'd14, eye_outs_y_e1 = 10'd49;




   wire [9:0]eye_outs_x_s2 = 10'd25, eye_outs_x_e2 = 10'd45;




   wire [9:0]eye_outs_y_s2 = 10'd21, eye_outs_y_e2 = 10'd42;




   wire [9:0]eye_x_s = 10'd29, eye_x_e = 10'd41;




   wire [9:0]eye_y_s = 10'd25, eye_y_e = 10'd37;




   wire [9:0]smile_x_s1 = 10'd14, smile_x_e1 = 10'd21;




   wire [9:0]smile_x_s2 = 10'd49, smile_x_e2 = 10'd56;




   wire [9:0]smile_y_s1 = 10'd56, smile_y_e1 = 10'd63;




   wire [9:0]foot_y_s = 10'd119;




   wire [9:0]foot_x_s1 = 10'd7, foot_x_e1 = 10'd28;




   wire [9:0]foot_x_s2 = 10'd42, foot_x_e2 = 10'd63;




   wire [9:0]white_x_e1 = 10'd7, white_x_s2 = 10'd28, white_x_e2 = 10'd42;




   wire [9:0]white_x_s3 = 10'd63, white_x_e3 = 10'd70;




   wire [9:0]white_y_s = 10'd119;




   wire [9:0]head_x_e1 = 10'd14, head_x_s2 = 10'd56;




   wire [9:0]head_x_e3 = 10'd7, head_x_s4 = 10'd63;




   wire [9:0]head_y_e1 = 10'd7, head_y_s3 = 10'd7, head_y_e3 = 10'd14;




   wire [9:0]cl_blx_e1 = 10'd7, cl_bly_s = 10'd105, cl_bly_e = 10'd119;




   wire [9:0]cl_blx_s2 = 10'd63;




  




  always




  begin




   if ((y>origin_y+cloth_y_s2&&y<origin_y+cloth_y_e2)&&((x>origin_x&&x<origin_x+cloth_x_e2)||(x>origin_x+cloth_x_s3&&x<origin_x+width)))begin




    minion_r = 10'h000;




    minion_g = 10'h000;




    minion_b = 10'h3ff;




   end




   else if ((y>origin_y+cloth_y_s1&&y<origin_y+cloth_y_e1)&&(x>origin_x+cloth_x_s1&&x<origin_x+cloth_x_e1))begin




    minion_r = 10'h000;




    minion_g = 10'h000;




    minion_b = 10'h3ff;




   end




   else if ((y>origin_y+not_clo_y_s&&y<origin_y+not_clo_y_e)&&(x>origin_x+not_clo_x_s1<x<origin_x+not_clo_x_e1)&&(x>origin_x+not_clo_x_s2&&x<origin_x+not_clo_x_e2))begin




    minion_r = 10'h3ff;




    minion_b = 10'h000;




    minion_g = 10'h3ff;




   end




   else if (((x>origin_x&&x<origin_x+cl_blx_e1)||(x>origin_x+cl_blx_s2&&x<origin_x+width))&&(y>origin_y+cl_bly_s&&y<origin_y+cl_bly_e))begin




    minion_r = 10'h000;




    minion_b = 10'h000;




    minion_g = 10'h000;




   end




   else if ((x>origin_x+eye_x_s&&y>origin_y+eye_y_s)&&(x<origin_x+eye_x_e&&y<origin_y+eye_y_e))begin




    minion_r = 10'h000;




    minion_g = 10'h000;




    minion_b = 10'h000;




   end




   else if ((x>origin_x+eye_outs_x_s2&&y>origin_y+eye_outs_y_s2)&&(x<origin_x+eye_outs_x_e2&&y<origin_y+eye_outs_y_e2))begin




    minion_r = 10'h3ff;




    minion_g = 10'h3ff;




    minion_b = 10'h3ff;




   end




   else if ((x>origin_x+eye_outs_x_s1&&y>origin_y+eye_outs_y_s1)&&(x<origin_x+eye_outs_x_e1&&y<origin_y+eye_outs_y_e1))begin




    minion_r = 10'h190;




    minion_g = 10'h190;




    minion_b = 10'h190;




   end




  




   else if ((x>origin_x&&y>origin_y+glass_y_s)&&(x<origin_x+width)&&y<origin_y+glass_y_e)begin




    minion_r = 10'h000;




    minion_g = 10'h000;




    minion_b = 10'h000;




   end




  




   else if ((x>origin_x+mouse_x_s&&y>origin_y+mouse_y_s)&&(x<origin_x+mouse_x_e&&y<origin_y+mouse_y_e))begin




    minion_r = 10'h000;




    minion_g = 10'h000;




    minion_b = 10'h000;




   end




   else if(((x>origin_x+smile_x_s1&&x<origin_x+smile_x_e1)||(x>origin_x+smile_x_s2&&x<origin_x+smile_x_e2))&&(y>origin_y+smile_y_s1)&&(y<origin_y+smile_y_e1))begin




    minion_r = 10'h000;




    minion_g = 10'h000;




    minion_b = 10'h000; 




   end




   else if ((y>origin_y+foot_y_s&&x>origin_x+foot_x_s1)&&(y<origin_y+high&&x<origin_x+foot_x_e1)||((y>origin_y+foot_y_s&&x>origin_x+foot_x_s2)&&(y<origin_y+high&&x<origin_x+foot_x_e2)))begin




    minion_r = 10'h000;




    minion_g = 10'h000;




    minion_b = 10'h000; 




   end




   else if (((x>origin_x&&x<origin_x+white_x_e1)||(x>origin_x+white_x_s2&&x<origin_x+white_x_e2)||(x>origin_x+white_x_s3&&x<origin_x+white_x_e3))&&(y>origin_y+white_y_s&&y<origin_y+high))begin




    minion_r = 10'h3ff;




    minion_g = 10'h3ff;




    minion_b = 10'h3ff; 




   end




   else if((y>origin_y&&y<origin_y+head_y_e1)&&((x>origin_x&&x<origin_x+head_x_e1)||(x>origin_x+head_x_s2&&x<origin_x+width)))begin




    minion_r = 10'h3ff;




    minion_b = 10'h3ff;




    minion_g = 10'h3ff;




   end




   else if ((y>origin_y+head_y_s3&&y<origin_y+head_y_e3)&&((x>origin_x&&x<origin_x+head_x_e3)||(x>origin_x+head_x_s4&&x<origin_x+width)))begin




    minion_r = 10'h3ff;




    minion_b = 10'h3ff;




    minion_g = 10'h3ff;




   end




  




   else begin




    minion_r = 10'h3ff;




    minion_b = 10'h000;




    minion_g = 10'h3ff;




   end




  end




 




  //minion2 character




   parameter origin_x_init2 = 540;




   parameter origin_y_init2 = 300;




  




   reg [9:0] origin_x2 = origin_x_init2;




   reg [9:0] origin_y2 = origin_y_init2;




 




   wire minion_on2 = (x>origin_x2&&y>origin_y2)&&(x<(origin_x2+width)&&y<(origin_y2+high));




 




 




  always




  begin

 //cloth small square

    if ((y>origin_y2+cloth_y_s2&&y<origin_y2+cloth_y_e2)&&((x>origin_x2&&x<origin_x2+cloth_x_e2)||(x>origin_x2+cloth_x_s3&&x<origin_x2+width)))begin




    minion_r2 = 10'h027;




    minion_g2 = 10'h012;




    minion_b2 = 10'h040;




   end

 //clothes

    else if ((y>origin_y2+cloth_y_s1&&y<origin_y2+cloth_y_e1)&&(x>origin_x2+cloth_x_s1&&x<origin_x2+cloth_x_e1))begin




    minion_r2 = 10'h027;




    minion_g2 = 10'h012;




    minion_b2 = 10'h040;




   end




   else if ((y>origin_y2+not_clo_y_s&&y<origin_y2+not_clo_y_e)&&(x>origin_x2+not_clo_x_s1<x<origin_x2+not_clo_x_e1)&&(x>origin_x2+not_clo_x_s2&&x<origin_x2+not_clo_x_e2))begin




    minion_r2 = 10'h209;




    minion_b2 = 10'h249;




    minion_g2 = 10'h163;




   end




   else if (((x>origin_x&&x<origin_x2+cl_blx_e1)||(x>origin_x2+cl_blx_s2&&x<origin_x2+width))&&(y>origin_y2+cl_bly_s&&y<origin_y2+cl_bly_e))begin




    minion_r2 = 10'h000;




    minion_b2 = 10'h000;




    minion_g2 = 10'h000;




   end




   else if ((x>origin_x2+eye_x_s&&y>origin_y2+eye_y_s)&&(x<origin_x2+eye_x_e&&y<origin_y2+eye_y_e))begin




    minion_r2 = 10'h000;




    minion_g2 = 10'h000;




    minion_b2 = 10'h000;




   end




   else if ((x>origin_x2+eye_outs_x_s2&&y>origin_y2+eye_outs_y_s2)&&(x<origin_x2+eye_outs_x_e2&&y<origin_y2+eye_outs_y_e2))begin




    minion_r2 = 10'h3ff;




    minion_g2 = 10'h3ff;




    minion_b2 = 10'h3ff;




   end




   else if ((x>origin_x2+eye_outs_x_s1&&y>origin_y2+eye_outs_y_s1)&&(x<origin_x2+eye_outs_x_e1&&y<origin_y2+eye_outs_y_e1))begin




    minion_r2 = 10'h190;




    minion_g2 = 10'h190;




    minion_b2 = 10'h190;




   end




  




   else if ((x>origin_x2&&y>origin_y2+glass_y_s)&&(x<origin_x2+width)&&y<origin_y2+glass_y_e)begin




    minion_r2 = 10'h000;




    minion_g2 = 10'h000;




    minion_b2 = 10'h000;




   end




  




   else if ((x>origin_x2+mouse_x_s&&y>origin_y2+mouse_y_s)&&(x<origin_x2+mouse_x_e&&y<origin_y2+mouse_y_e))begin




    minion_r2 = 10'h000;




    minion_g2 = 10'h000;




    minion_b2 = 10'h000;




   end




   else if(((x>origin_x2+smile_x_s1&&x<origin_x2+smile_x_e1)||(x>origin_x2+smile_x_s2&&x<origin_x2+smile_x_e2))&&(y>origin_y2+smile_y_s1)&&(y<origin_y2+smile_y_e1))begin




    minion_r2 = 10'h000;




    minion_g2 = 10'h000;




    minion_b2 = 10'h000; 




   end




   else if ((y>origin_y2+foot_y_s&&x>origin_x2+foot_x_s1)&&(y<origin_y2+high&&x<origin_x2+foot_x_e1)||((y>origin_y2+foot_y_s&&x>origin_x2+foot_x_s2)&&(y<origin_y2+high&&x<origin_x2+foot_x_e2)))begin




    minion_r2 = 10'h000;




    minion_g2 = 10'h000;




    minion_b2 = 10'h000; 




   end




   else if (((x>origin_x2&&x<origin_x2+white_x_e1)||(x>origin_x2+white_x_s2&&x<origin_x2+white_x_e2)||(x>origin_x2+white_x_s3&&x<origin_x2+white_x_e3))&&(y>origin_y2+white_y_s&&y<origin_y2+high))begin




    minion_r2 = 10'h3ff;




    minion_g2 = 10'h3ff;




    minion_b2 = 10'h3ff; 




   end




   else if((y>origin_y2&&y<origin_y2+head_y_e1)&&((x>origin_x2&&x<origin_x2+head_x_e1)||(x>origin_x2+head_x_s2&&x<origin_x2+width)))begin




    minion_r2 = 10'h3ff;




    minion_b2 = 10'h3ff;




    minion_g2 = 10'h3ff;




   end




   else if ((y>origin_y2+head_y_s3&&y<origin_y2+head_y_e3)&&((x>origin_x2&&x<origin_x2+head_x_e3)||(x>origin_x2+head_x_s4&&x<origin_x2+width)))begin




    minion_r2 = 10'h3ff;




    minion_b2 = 10'h3ff;




    minion_g2 = 10'h3ff;




   end




  




   else begin




    minion_r2 = 10'h209;




    minion_b2 = 10'h249;




    minion_g2 = 10'h163;




   end




  end




  




endmodule



















module hex_7seg(count, HEX0);




 input [3:0]count;




 output reg [0:6]HEX0;







 always @(*)begin




   case (count)




    4'b0000:HEX0 = 7'b0000001;
	 
	 4'b0001:HEX0 = 7'b1001111;

	 4'b0010:HEX0 = 7'b0010010;

	 4'b0011:HEX0 = 7'b0000110;

	 4'b0100:HEX0 = 7'b1001100;

	 4'b0101:HEX0 = 7'b0100100;

	 4'b0110:HEX0 = 7'b0100000;

	 4'b0111:HEX0 = 7'b0001111;

	 4'b1000:HEX0 = 7'b0000000;

	 4'b1001:HEX0 = 7'b0000100;

	 4'b1010:HEX0 = 7'b0000001;

	 4'b1011:HEX0 = 7'b1001111;

	 4'b1100:HEX0 = 7'b0010010;

	 4'b1101:HEX0 = 7'b0000110;

	 4'b1110:HEX0 = 7'b1001100;

	 4'b1111:HEX0 = 7'b0100100;

 endcase




 end




endmodule


module hex_7seg2(count, HEX1);




 input [3:0]count;




 output reg [0:6]HEX1;







 always @(*)begin




   case (count)




    4'b0000:HEX1 = 7'b0000001;
	 
	 4'b0001:HEX1 = 7'b0000001;

	 4'b0010:HEX1 = 7'b0000001;

	 4'b0011:HEX1 = 7'b0000001;

	 4'b0100:HEX1 = 7'b0000001;

	 4'b0101:HEX1 = 7'b0000001;

	 4'b0110:HEX1 = 7'b0000001;

	 4'b0111:HEX1 = 7'b0000001;

	 4'b1000:HEX1 = 7'b0000001;

	 4'b1001:HEX1 = 7'b0000001;

	 4'b1010:HEX1 = 7'b1001111;

	 4'b1011:HEX1 = 7'b1001111;

	 4'b1100:HEX1 = 7'b1001111;

	 4'b1101:HEX1 = 7'b1001111;

	 4'b1110:HEX1 = 7'b1001111;

	 4'b1111:HEX1 = 7'b1001111;

 endcase




 end




endmodule
