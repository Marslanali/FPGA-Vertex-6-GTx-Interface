///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 1.12
//  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
//  /   /         Filename : vertex6_gtx_rx_component.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module VERTEX6_GTX_RX_COMPONENT (a GTX Wrapper)
// Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
// 
// 
// (c) Copyright 2009-2011 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`timescale 1ns / 1ps


//***************************** Entity Declaration ****************************

(* CORE_GENERATION_INFO = "vertex6_gtx_rx_component,v6_gtxwizard_v1_12,{protocol_file=Start_from_scratch}" *) module vertex6_gtx_rx_component #
(
    // Simulation attributes
    parameter   WRAPPER_SIM_GTXRESET_SPEEDUP    = 0    // Set to 1 to speed up sim reset
)
(
    
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y0)

    input          GTX0_DOUBLE_RESET_CLK_IN,
    //---------------------- Loopback and Powerdown Ports ----------------------
    input   [2:0]   GTX0_LOOPBACK_IN,
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    output          GTX0_RXCHARISK_OUT,
    output          GTX0_RXDISPERR_OUT,
    output          GTX0_RXNOTINTABLE_OUT,
    //------------- Receive Ports - Comma Detection and Alignment --------------
    output          GTX0_RXCOMMADET_OUT,
    input           GTX0_RXENMCOMMAALIGN_IN,
    input           GTX0_RXENPCOMMAALIGN_IN,
    //----------------- Receive Ports - RX Data Path interface -----------------
    output  [7:0]   GTX0_RXDATA_OUT,
    input           GTX0_RXRESET_IN,
    input           GTX0_RXUSRCLK2_IN,
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    input   [2:0]   GTX0_RXEQMIX_IN,
    input           GTX0_RXN_IN,
    input           GTX0_RXP_IN,
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    input           GTX0_GTXRXRESET_IN,
    input           GTX0_MGTREFCLKRX_IN,
    input           GTX0_PLLRXRESET_IN,
    output          GTX0_RXPLLLKDET_OUT,
    output          GTX0_RXRESETDONE_OUT,
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    input           GTX0_TXCHARISK_IN,
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input   [7:0]   GTX0_TXDATA_IN,
    output          GTX0_TXOUTCLK_OUT,
    input           GTX0_TXRESET_IN,
    input           GTX0_TXUSRCLK2_IN,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    input   [3:0]   GTX0_TXDIFFCTRL_IN,
    output          GTX0_TXN_OUT,
    output          GTX0_TXP_OUT,
    input   [4:0]   GTX0_TXPOSTEMPHASIS_IN,
    //------------- Transmit Ports - TX Driver and OOB signalling --------------
    input   [3:0]   GTX0_TXPREEMPHASIS_IN,
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    input           GTX0_GTXTXRESET_IN,
    input           GTX0_MGTREFCLKTX_IN,
    input           GTX0_PLLTXRESET_IN,
    output          GTX0_TXPLLLKDET_OUT,
    output          GTX0_TXRESETDONE_OUT


);

//***************************** Wire Declarations *****************************

    // ground and vcc signals
    wire            tied_to_ground_i;
    wire    [63:0]  tied_to_ground_vec_i;
    wire            tied_to_vcc_i;
    wire    [63:0]  tied_to_vcc_vec_i;
    wire            gtx0_gtxtest_bit1;
    wire            gtx0_gtxtest_done;
    wire    [12:0]  gtx0_gtxtest_i;
    wire            gtx0_txreset_i;
    wire            gtx0_rxreset_i;
    wire            gtx0_txplllkdet_i;
 
//********************************* Main Body of Code**************************

    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 64'h0000000000000000;
    assign tied_to_vcc_i                = 1'b1;
    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;

    assign gtx0_gtxtest_i          = {11'b10000000000,gtx0_gtxtest_bit1,1'b0};
    assign gtx0_txreset_i          = gtx0_gtxtest_done || GTX0_TXRESET_IN;
    assign gtx0_rxreset_i          = gtx0_gtxtest_done || GTX0_RXRESET_IN;
    assign GTX0_TXPLLLKDET_OUT     = gtx0_txplllkdet_i;

//------------------------- GTX Instances  -------------------------------



    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y0)

    vertex6_gtx_rx_component_gtx #
    (
        // Simulation attributes
        .GTX_SIM_GTXRESET_SPEEDUP   (WRAPPER_SIM_GTXRESET_SPEEDUP),
        
        // Share RX PLL parameter
        .GTX_TX_CLK_SOURCE           ("TXPLL"),
        // Save power parameter
        .GTX_POWER_SAVE              (10'b0000110000)
    )
    gtx0_vertex6_gtx_rx_component_i
    (
        //---------------------- Loopback and Powerdown Ports ----------------------
        .LOOPBACK_IN                    (GTX0_LOOPBACK_IN),
        //--------------------- Receive Ports - 8b10b Decoder ----------------------
        .RXCHARISK_OUT                  (GTX0_RXCHARISK_OUT),
        .RXDISPERR_OUT                  (GTX0_RXDISPERR_OUT),
        .RXNOTINTABLE_OUT               (GTX0_RXNOTINTABLE_OUT),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .RXCOMMADET_OUT                 (GTX0_RXCOMMADET_OUT),
        .RXENMCOMMAALIGN_IN             (GTX0_RXENMCOMMAALIGN_IN),
        .RXENPCOMMAALIGN_IN             (GTX0_RXENPCOMMAALIGN_IN),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .RXDATA_OUT                     (GTX0_RXDATA_OUT),
        .RXRESET_IN                     (gtx0_rxreset_i),
        .RXUSRCLK2_IN                   (GTX0_RXUSRCLK2_IN),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .RXEQMIX_IN                     (GTX0_RXEQMIX_IN),
        .RXN_IN                         (GTX0_RXN_IN),
        .RXP_IN                         (GTX0_RXP_IN),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTXRXRESET_IN                  (GTX0_GTXRXRESET_IN),
        .MGTREFCLKRX_IN                 ({tied_to_ground_i , GTX0_MGTREFCLKRX_IN}),
        .PLLRXRESET_IN                  (GTX0_PLLRXRESET_IN),
        .RXPLLLKDET_OUT                 (GTX0_RXPLLLKDET_OUT),
        .RXRESETDONE_OUT                (GTX0_RXRESETDONE_OUT),
        //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        .TXCHARISK_IN                   (GTX0_TXCHARISK_IN),
        //----------------------- Transmit Ports - GTX Ports -----------------------
        .GTXTEST_IN                     (gtx0_gtxtest_i),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .TXDATA_IN                      (GTX0_TXDATA_IN),
        .TXOUTCLK_OUT                   (GTX0_TXOUTCLK_OUT),
        .TXRESET_IN                     (gtx0_txreset_i),
        .TXUSRCLK2_IN                   (GTX0_TXUSRCLK2_IN),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .TXDIFFCTRL_IN                  (GTX0_TXDIFFCTRL_IN),
        .TXN_OUT                        (GTX0_TXN_OUT),
        .TXP_OUT                        (GTX0_TXP_OUT),
        .TXPOSTEMPHASIS_IN              (GTX0_TXPOSTEMPHASIS_IN),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .TXPREEMPHASIS_IN               (GTX0_TXPREEMPHASIS_IN),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTXTXRESET_IN                  (GTX0_GTXTXRESET_IN),
        .MGTREFCLKTX_IN                 ({tied_to_ground_i , GTX0_MGTREFCLKTX_IN}),
        .PLLTXRESET_IN                  (GTX0_PLLTXRESET_IN),
        .TXPLLLKDET_OUT                 (gtx0_txplllkdet_i),
        .TXRESETDONE_OUT                (GTX0_TXRESETDONE_OUT)

    );


    //--------------------------Logic to drive GTXTEST[1] -------------------------------
     DOUBLE_RESET gtx0_double_reset_i
     (
        .CLK(GTX0_DOUBLE_RESET_CLK_IN),
        .PLLLKDET(gtx0_txplllkdet_i),
        .GTXTEST_DONE(gtx0_gtxtest_done),
        .GTXTEST_BIT1(gtx0_gtxtest_bit1)
     );
    

endmodule

    
