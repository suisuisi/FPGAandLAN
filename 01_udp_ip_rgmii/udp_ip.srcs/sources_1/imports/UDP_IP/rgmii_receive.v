`timescale 1ns / 1ps

module rgmii_receive(
    input         reset,
	 input         RGMII_rx_clk,
	 input         RGMII_rx_ctrl,
	 input [3:0]   RGMII_rx_data,
	 
	 output wire        RGMII_reference_clk,
	 output wire        GMII_data_valid,
	 output wire        GMII_rx_error,
	 output wire[7:0]   GMII_rx_data
    );
	 
wire         RGMII_rx_clk_bufg;
wire         RGMII_rx_clk_bufio;
wire         RGMII_rx_ctrl_delay;
wire [3:0]   RGMII_rx_data_delay;
wire         GMII_rx_valid;
wire         RGMII_rx_valid_xor_error;
wire         RGMII_rx_clk_ibuf;
wire         RGMII_rx_ctrl_ibuf;
wire [3:0]   RGMII_rx_data_ibuf;


assign  GMII_data_valid = GMII_rx_valid;
assign  GMII_rx_error = GMII_rx_valid ^ RGMII_rx_valid_xor_error;  


  IBUF rgmii_rxc_ibuf_i (
     .I              (RGMII_rx_clk),
     .O              (RGMII_rx_clk_ibuf)
  );

  IBUF rgmii_rx_ctl_ibuf_i (
     .I              (RGMII_rx_ctrl),
     .O              (RGMII_rx_ctrl_ibuf)
  );

  genvar i;
  generate for (i=0; i<4; i=i+1)
    begin : ibuf_data
      IBUF rgmii_rxd_ibuf_i (
         .I              (RGMII_rx_data[i]),
         .O              (RGMII_rx_data_ibuf[i])
      );
    end
  endgenerate

  
     // Route rgmii_rxc through a BUFIO/BUFR and onto regional clock routing
   BUFIO bufio_rgmii_rx_clk (
      .I             (RGMII_rx_clk_ibuf),
      .O             (RGMII_rx_clk_bufio)
   );

   // Route rx_clk through a BUFR onto regional clock routing
   BUFG bufg_rgmii_rx_clk (
      .I             (RGMII_rx_clk_ibuf),
      .O             (RGMII_reference_clk)
   );

	
   IDELAYE2 #(
      .IDELAY_TYPE   ("FIXED")
	  //.IDELAY_VALUE	 (12)
   )
   delay_rgmii_rx_ctl (
      .IDATAIN       (RGMII_rx_ctrl_ibuf),
      .DATAOUT       (RGMII_rx_ctrl_delay),
      .DATAIN        (1'b0),
      .C             (1'b0),
      .CE            (1'b0),
      .INC           (1'b0),
      .CINVCTRL      (1'b0),
      .CNTVALUEIN    (5'h0),
      .CNTVALUEOUT   (),
      .LD            (1'b0),
      .LDPIPEEN      (1'b0),
      .REGRST        (1'b0)
      );
	
   
   IDDR #(
      .DDR_CLK_EDGE  ("SAME_EDGE_PIPELINED")
   )
   rgmii_rx_ctl_in (
      .Q1            (GMII_rx_valid),
      .Q2            (RGMII_rx_valid_xor_error),
      .C             (RGMII_rx_clk_bufio),
      .CE            (1'b1),
      .D             (RGMII_rx_ctrl_delay),
      .R             (1'b0),
      .S             (1'b0)
   );

//RGMII数据输入IOB延时控制

genvar j;
generate for (j=0; j<4; j=j+1)
   begin : RGMII_RX_DATA_BUS
	
       IDELAYE2 #(
          .IDELAY_TYPE   ("FIXED")
		  //.IDELAY_VALUE	 (12)
       )
       delay_rgmii_rxd (
          .IDATAIN       (RGMII_rx_data_ibuf[j]),
          .DATAOUT       (RGMII_rx_data_delay[j]),
          .DATAIN        (1'b0),
          .C             (1'b0),
          .CE            (1'b0),
          .INC           (1'b0),
          .CINVCTRL      (1'b0),
          .CNTVALUEIN    (5'h0),
          .CNTVALUEOUT   (),
          .LD            (1'b0),
          .LDPIPEEN      (1'b0),
          .REGRST        (1'b0)
       );

	   
      IDDR #(
          .DDR_CLK_EDGE  ("SAME_EDGE_PIPELINED")
       )
       rgmii_rx_data_in (
          .Q1            (GMII_rx_data[j]),
          .Q2            (GMII_rx_data[j+4]),
          .C             (RGMII_rx_clk_bufio),
          .CE            (1'b1),
          .D             (RGMII_rx_data_delay[j]),
          .R             (1'b0),
          .S             (1'b0)
       );   
	
   end
endgenerate
	
endmodule
