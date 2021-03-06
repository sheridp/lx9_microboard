module wb_intercon
   (input         wb_clk_i,
    input         wb_rst_i,
    input  [31:0] wb_or1200_d_adr_i,
    input  [31:0] wb_or1200_d_dat_i,
    input   [3:0] wb_or1200_d_sel_i,
    input         wb_or1200_d_we_i,
    input         wb_or1200_d_cyc_i,
    input         wb_or1200_d_stb_i,
    input   [2:0] wb_or1200_d_cti_i,
    input   [1:0] wb_or1200_d_bte_i,
    output [31:0] wb_or1200_d_dat_o,
    output        wb_or1200_d_ack_o,
    output        wb_or1200_d_err_o,
    output        wb_or1200_d_rty_o,
    input  [31:0] wb_or1200_i_adr_i,
    input  [31:0] wb_or1200_i_dat_i,
    input   [3:0] wb_or1200_i_sel_i,
    input         wb_or1200_i_we_i,
    input         wb_or1200_i_cyc_i,
    input         wb_or1200_i_stb_i,
    input   [2:0] wb_or1200_i_cti_i,
    input   [1:0] wb_or1200_i_bte_i,
    output [31:0] wb_or1200_i_dat_o,
    output        wb_or1200_i_ack_o,
    output        wb_or1200_i_err_o,
    output        wb_or1200_i_rty_o,
    input  [31:0] wb_dbg_adr_i,
    input  [31:0] wb_dbg_dat_i,
    input   [3:0] wb_dbg_sel_i,
    input         wb_dbg_we_i,
    input         wb_dbg_cyc_i,
    input         wb_dbg_stb_i,
    input   [2:0] wb_dbg_cti_i,
    input   [1:0] wb_dbg_bte_i,
    output [31:0] wb_dbg_dat_o,
    output        wb_dbg_ack_o,
    output        wb_dbg_err_o,
    output        wb_dbg_rty_o,
    output [31:0] wb_gpio_adr_o,
    output  [7:0] wb_gpio_dat_o,
    output  [3:0] wb_gpio_sel_o,
    output        wb_gpio_we_o,
    output        wb_gpio_cyc_o,
    output        wb_gpio_stb_o,
    output  [2:0] wb_gpio_cti_o,
    output  [1:0] wb_gpio_bte_o,
    input   [7:0] wb_gpio_dat_i,
    input         wb_gpio_ack_i,
    input         wb_gpio_err_i,
    input         wb_gpio_rty_i,
    output [31:0] wb_mem_adr_o,
    output [31:0] wb_mem_dat_o,
    output  [3:0] wb_mem_sel_o,
    output        wb_mem_we_o,
    output        wb_mem_cyc_o,
    output        wb_mem_stb_o,
    output  [2:0] wb_mem_cti_o,
    output  [1:0] wb_mem_bte_o,
    input  [31:0] wb_mem_dat_i,
    input         wb_mem_ack_i,
    input         wb_mem_err_i,
    input         wb_mem_rty_i);

wire [31:0] wb_m2s_or1200_d_mem_adr;
wire [31:0] wb_m2s_or1200_d_mem_dat;
wire  [3:0] wb_m2s_or1200_d_mem_sel;
wire        wb_m2s_or1200_d_mem_we;
wire        wb_m2s_or1200_d_mem_cyc;
wire        wb_m2s_or1200_d_mem_stb;
wire  [2:0] wb_m2s_or1200_d_mem_cti;
wire  [1:0] wb_m2s_or1200_d_mem_bte;
wire [31:0] wb_s2m_or1200_d_mem_dat;
wire        wb_s2m_or1200_d_mem_ack;
wire        wb_s2m_or1200_d_mem_err;
wire        wb_s2m_or1200_d_mem_rty;
wire [31:0] wb_m2s_or1200_d_gpio_adr;
wire [31:0] wb_m2s_or1200_d_gpio_dat;
wire  [3:0] wb_m2s_or1200_d_gpio_sel;
wire        wb_m2s_or1200_d_gpio_we;
wire        wb_m2s_or1200_d_gpio_cyc;
wire        wb_m2s_or1200_d_gpio_stb;
wire  [2:0] wb_m2s_or1200_d_gpio_cti;
wire  [1:0] wb_m2s_or1200_d_gpio_bte;
wire [31:0] wb_s2m_or1200_d_gpio_dat;
wire        wb_s2m_or1200_d_gpio_ack;
wire        wb_s2m_or1200_d_gpio_err;
wire        wb_s2m_or1200_d_gpio_rty;
wire [31:0] wb_m2s_or1200_i_mem_adr;
wire [31:0] wb_m2s_or1200_i_mem_dat;
wire  [3:0] wb_m2s_or1200_i_mem_sel;
wire        wb_m2s_or1200_i_mem_we;
wire        wb_m2s_or1200_i_mem_cyc;
wire        wb_m2s_or1200_i_mem_stb;
wire  [2:0] wb_m2s_or1200_i_mem_cti;
wire  [1:0] wb_m2s_or1200_i_mem_bte;
wire [31:0] wb_s2m_or1200_i_mem_dat;
wire        wb_s2m_or1200_i_mem_ack;
wire        wb_s2m_or1200_i_mem_err;
wire        wb_s2m_or1200_i_mem_rty;
wire [31:0] wb_m2s_dbg_mem_adr;
wire [31:0] wb_m2s_dbg_mem_dat;
wire  [3:0] wb_m2s_dbg_mem_sel;
wire        wb_m2s_dbg_mem_we;
wire        wb_m2s_dbg_mem_cyc;
wire        wb_m2s_dbg_mem_stb;
wire  [2:0] wb_m2s_dbg_mem_cti;
wire  [1:0] wb_m2s_dbg_mem_bte;
wire [31:0] wb_s2m_dbg_mem_dat;
wire        wb_s2m_dbg_mem_ack;
wire        wb_s2m_dbg_mem_err;
wire        wb_s2m_dbg_mem_rty;
wire [31:0] wb_m2s_dbg_gpio_adr;
wire [31:0] wb_m2s_dbg_gpio_dat;
wire  [3:0] wb_m2s_dbg_gpio_sel;
wire        wb_m2s_dbg_gpio_we;
wire        wb_m2s_dbg_gpio_cyc;
wire        wb_m2s_dbg_gpio_stb;
wire  [2:0] wb_m2s_dbg_gpio_cti;
wire  [1:0] wb_m2s_dbg_gpio_bte;
wire [31:0] wb_s2m_dbg_gpio_dat;
wire        wb_s2m_dbg_gpio_ack;
wire        wb_s2m_dbg_gpio_err;
wire        wb_s2m_dbg_gpio_rty;
wire [31:0] wb_m2s_resize_gpio_adr;
wire [31:0] wb_m2s_resize_gpio_dat;
wire  [3:0] wb_m2s_resize_gpio_sel;
wire        wb_m2s_resize_gpio_we;
wire        wb_m2s_resize_gpio_cyc;
wire        wb_m2s_resize_gpio_stb;
wire  [2:0] wb_m2s_resize_gpio_cti;
wire  [1:0] wb_m2s_resize_gpio_bte;
wire [31:0] wb_s2m_resize_gpio_dat;
wire        wb_s2m_resize_gpio_ack;
wire        wb_s2m_resize_gpio_err;
wire        wb_s2m_resize_gpio_rty;

wb_mux
  #(.num_slaves (2),
    .MATCH_ADDR ({32'h00000000, 32'h91000000}),
    .MATCH_MASK ({32'hff800000, 32'hfffffffe}))
 wb_mux_or1200_d
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i (wb_or1200_d_adr_i),
    .wbm_dat_i (wb_or1200_d_dat_i),
    .wbm_sel_i (wb_or1200_d_sel_i),
    .wbm_we_i  (wb_or1200_d_we_i),
    .wbm_cyc_i (wb_or1200_d_cyc_i),
    .wbm_stb_i (wb_or1200_d_stb_i),
    .wbm_cti_i (wb_or1200_d_cti_i),
    .wbm_bte_i (wb_or1200_d_bte_i),
    .wbm_dat_o (wb_or1200_d_dat_o),
    .wbm_ack_o (wb_or1200_d_ack_o),
    .wbm_err_o (wb_or1200_d_err_o),
    .wbm_rty_o (wb_or1200_d_rty_o),
    .wbs_adr_o ({wb_m2s_or1200_d_mem_adr, wb_m2s_or1200_d_gpio_adr}),
    .wbs_dat_o ({wb_m2s_or1200_d_mem_dat, wb_m2s_or1200_d_gpio_dat}),
    .wbs_sel_o ({wb_m2s_or1200_d_mem_sel, wb_m2s_or1200_d_gpio_sel}),
    .wbs_we_o  ({wb_m2s_or1200_d_mem_we, wb_m2s_or1200_d_gpio_we}),
    .wbs_cyc_o ({wb_m2s_or1200_d_mem_cyc, wb_m2s_or1200_d_gpio_cyc}),
    .wbs_stb_o ({wb_m2s_or1200_d_mem_stb, wb_m2s_or1200_d_gpio_stb}),
    .wbs_cti_o ({wb_m2s_or1200_d_mem_cti, wb_m2s_or1200_d_gpio_cti}),
    .wbs_bte_o ({wb_m2s_or1200_d_mem_bte, wb_m2s_or1200_d_gpio_bte}),
    .wbs_dat_i ({wb_s2m_or1200_d_mem_dat, wb_s2m_or1200_d_gpio_dat}),
    .wbs_ack_i ({wb_s2m_or1200_d_mem_ack, wb_s2m_or1200_d_gpio_ack}),
    .wbs_err_i ({wb_s2m_or1200_d_mem_err, wb_s2m_or1200_d_gpio_err}),
    .wbs_rty_i ({wb_s2m_or1200_d_mem_rty, wb_s2m_or1200_d_gpio_rty}));

wb_mux
  #(.num_slaves (1),
    .MATCH_ADDR ({32'h00000000}),
    .MATCH_MASK ({32'hff800000}))
 wb_mux_or1200_i
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i (wb_or1200_i_adr_i),
    .wbm_dat_i (wb_or1200_i_dat_i),
    .wbm_sel_i (wb_or1200_i_sel_i),
    .wbm_we_i  (wb_or1200_i_we_i),
    .wbm_cyc_i (wb_or1200_i_cyc_i),
    .wbm_stb_i (wb_or1200_i_stb_i),
    .wbm_cti_i (wb_or1200_i_cti_i),
    .wbm_bte_i (wb_or1200_i_bte_i),
    .wbm_dat_o (wb_or1200_i_dat_o),
    .wbm_ack_o (wb_or1200_i_ack_o),
    .wbm_err_o (wb_or1200_i_err_o),
    .wbm_rty_o (wb_or1200_i_rty_o),
    .wbs_adr_o ({wb_m2s_or1200_i_mem_adr}),
    .wbs_dat_o ({wb_m2s_or1200_i_mem_dat}),
    .wbs_sel_o ({wb_m2s_or1200_i_mem_sel}),
    .wbs_we_o  ({wb_m2s_or1200_i_mem_we}),
    .wbs_cyc_o ({wb_m2s_or1200_i_mem_cyc}),
    .wbs_stb_o ({wb_m2s_or1200_i_mem_stb}),
    .wbs_cti_o ({wb_m2s_or1200_i_mem_cti}),
    .wbs_bte_o ({wb_m2s_or1200_i_mem_bte}),
    .wbs_dat_i ({wb_s2m_or1200_i_mem_dat}),
    .wbs_ack_i ({wb_s2m_or1200_i_mem_ack}),
    .wbs_err_i ({wb_s2m_or1200_i_mem_err}),
    .wbs_rty_i ({wb_s2m_or1200_i_mem_rty}));

wb_mux
  #(.num_slaves (2),
    .MATCH_ADDR ({32'h00000000, 32'h91000000}),
    .MATCH_MASK ({32'hff800000, 32'hfffffffe}))
 wb_mux_dbg
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i (wb_dbg_adr_i),
    .wbm_dat_i (wb_dbg_dat_i),
    .wbm_sel_i (wb_dbg_sel_i),
    .wbm_we_i  (wb_dbg_we_i),
    .wbm_cyc_i (wb_dbg_cyc_i),
    .wbm_stb_i (wb_dbg_stb_i),
    .wbm_cti_i (wb_dbg_cti_i),
    .wbm_bte_i (wb_dbg_bte_i),
    .wbm_dat_o (wb_dbg_dat_o),
    .wbm_ack_o (wb_dbg_ack_o),
    .wbm_err_o (wb_dbg_err_o),
    .wbm_rty_o (wb_dbg_rty_o),
    .wbs_adr_o ({wb_m2s_dbg_mem_adr, wb_m2s_dbg_gpio_adr}),
    .wbs_dat_o ({wb_m2s_dbg_mem_dat, wb_m2s_dbg_gpio_dat}),
    .wbs_sel_o ({wb_m2s_dbg_mem_sel, wb_m2s_dbg_gpio_sel}),
    .wbs_we_o  ({wb_m2s_dbg_mem_we, wb_m2s_dbg_gpio_we}),
    .wbs_cyc_o ({wb_m2s_dbg_mem_cyc, wb_m2s_dbg_gpio_cyc}),
    .wbs_stb_o ({wb_m2s_dbg_mem_stb, wb_m2s_dbg_gpio_stb}),
    .wbs_cti_o ({wb_m2s_dbg_mem_cti, wb_m2s_dbg_gpio_cti}),
    .wbs_bte_o ({wb_m2s_dbg_mem_bte, wb_m2s_dbg_gpio_bte}),
    .wbs_dat_i ({wb_s2m_dbg_mem_dat, wb_s2m_dbg_gpio_dat}),
    .wbs_ack_i ({wb_s2m_dbg_mem_ack, wb_s2m_dbg_gpio_ack}),
    .wbs_err_i ({wb_s2m_dbg_mem_err, wb_s2m_dbg_gpio_err}),
    .wbs_rty_i ({wb_s2m_dbg_mem_rty, wb_s2m_dbg_gpio_rty}));

wb_arbiter
  #(.num_masters (2))
 wb_arbiter_gpio
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i ({wb_m2s_or1200_d_gpio_adr, wb_m2s_dbg_gpio_adr}),
    .wbm_dat_i ({wb_m2s_or1200_d_gpio_dat, wb_m2s_dbg_gpio_dat}),
    .wbm_sel_i ({wb_m2s_or1200_d_gpio_sel, wb_m2s_dbg_gpio_sel}),
    .wbm_we_i  ({wb_m2s_or1200_d_gpio_we, wb_m2s_dbg_gpio_we}),
    .wbm_cyc_i ({wb_m2s_or1200_d_gpio_cyc, wb_m2s_dbg_gpio_cyc}),
    .wbm_stb_i ({wb_m2s_or1200_d_gpio_stb, wb_m2s_dbg_gpio_stb}),
    .wbm_cti_i ({wb_m2s_or1200_d_gpio_cti, wb_m2s_dbg_gpio_cti}),
    .wbm_bte_i ({wb_m2s_or1200_d_gpio_bte, wb_m2s_dbg_gpio_bte}),
    .wbm_dat_o ({wb_s2m_or1200_d_gpio_dat, wb_s2m_dbg_gpio_dat}),
    .wbm_ack_o ({wb_s2m_or1200_d_gpio_ack, wb_s2m_dbg_gpio_ack}),
    .wbm_err_o ({wb_s2m_or1200_d_gpio_err, wb_s2m_dbg_gpio_err}),
    .wbm_rty_o ({wb_s2m_or1200_d_gpio_rty, wb_s2m_dbg_gpio_rty}),
    .wbs_adr_o (wb_m2s_resize_gpio_adr),
    .wbs_dat_o (wb_m2s_resize_gpio_dat),
    .wbs_sel_o (wb_m2s_resize_gpio_sel),
    .wbs_we_o  (wb_m2s_resize_gpio_we),
    .wbs_cyc_o (wb_m2s_resize_gpio_cyc),
    .wbs_stb_o (wb_m2s_resize_gpio_stb),
    .wbs_cti_o (wb_m2s_resize_gpio_cti),
    .wbs_bte_o (wb_m2s_resize_gpio_bte),
    .wbs_dat_i (wb_s2m_resize_gpio_dat),
    .wbs_ack_i (wb_s2m_resize_gpio_ack),
    .wbs_err_i (wb_s2m_resize_gpio_err),
    .wbs_rty_i (wb_s2m_resize_gpio_rty));

wb_data_resize
  #(.aw  (32),
    .mdw (32),
    .sdw (8))
 wb_data_resize_gpio
   (.wbm_adr_i (wb_m2s_resize_gpio_adr),
    .wbm_dat_i (wb_m2s_resize_gpio_dat),
    .wbm_sel_i (wb_m2s_resize_gpio_sel),
    .wbm_we_i  (wb_m2s_resize_gpio_we),
    .wbm_cyc_i (wb_m2s_resize_gpio_cyc),
    .wbm_stb_i (wb_m2s_resize_gpio_stb),
    .wbm_cti_i (wb_m2s_resize_gpio_cti),
    .wbm_bte_i (wb_m2s_resize_gpio_bte),
    .wbm_dat_o (wb_s2m_resize_gpio_dat),
    .wbm_ack_o (wb_s2m_resize_gpio_ack),
    .wbm_err_o (wb_s2m_resize_gpio_err),
    .wbm_rty_o (wb_s2m_resize_gpio_rty),
    .wbs_adr_o (wb_gpio_adr_o),
    .wbs_dat_o (wb_gpio_dat_o),
    .wbs_we_o  (wb_gpio_we_o),
    .wbs_cyc_o (wb_gpio_cyc_o),
    .wbs_stb_o (wb_gpio_stb_o),
    .wbs_cti_o (wb_gpio_cti_o),
    .wbs_bte_o (wb_gpio_bte_o),
    .wbs_dat_i (wb_gpio_dat_i),
    .wbs_ack_i (wb_gpio_ack_i),
    .wbs_err_i (wb_gpio_err_i),
    .wbs_rty_i (wb_gpio_rty_i));

wb_arbiter
  #(.num_masters (3))
 wb_arbiter_mem
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i ({wb_m2s_or1200_d_mem_adr, wb_m2s_dbg_mem_adr, wb_m2s_or1200_i_mem_adr}),
    .wbm_dat_i ({wb_m2s_or1200_d_mem_dat, wb_m2s_dbg_mem_dat, wb_m2s_or1200_i_mem_dat}),
    .wbm_sel_i ({wb_m2s_or1200_d_mem_sel, wb_m2s_dbg_mem_sel, wb_m2s_or1200_i_mem_sel}),
    .wbm_we_i  ({wb_m2s_or1200_d_mem_we, wb_m2s_dbg_mem_we, wb_m2s_or1200_i_mem_we}),
    .wbm_cyc_i ({wb_m2s_or1200_d_mem_cyc, wb_m2s_dbg_mem_cyc, wb_m2s_or1200_i_mem_cyc}),
    .wbm_stb_i ({wb_m2s_or1200_d_mem_stb, wb_m2s_dbg_mem_stb, wb_m2s_or1200_i_mem_stb}),
    .wbm_cti_i ({wb_m2s_or1200_d_mem_cti, wb_m2s_dbg_mem_cti, wb_m2s_or1200_i_mem_cti}),
    .wbm_bte_i ({wb_m2s_or1200_d_mem_bte, wb_m2s_dbg_mem_bte, wb_m2s_or1200_i_mem_bte}),
    .wbm_dat_o ({wb_s2m_or1200_d_mem_dat, wb_s2m_dbg_mem_dat, wb_s2m_or1200_i_mem_dat}),
    .wbm_ack_o ({wb_s2m_or1200_d_mem_ack, wb_s2m_dbg_mem_ack, wb_s2m_or1200_i_mem_ack}),
    .wbm_err_o ({wb_s2m_or1200_d_mem_err, wb_s2m_dbg_mem_err, wb_s2m_or1200_i_mem_err}),
    .wbm_rty_o ({wb_s2m_or1200_d_mem_rty, wb_s2m_dbg_mem_rty, wb_s2m_or1200_i_mem_rty}),
    .wbs_adr_o (wb_mem_adr_o),
    .wbs_dat_o (wb_mem_dat_o),
    .wbs_sel_o (wb_mem_sel_o),
    .wbs_we_o  (wb_mem_we_o),
    .wbs_cyc_o (wb_mem_cyc_o),
    .wbs_stb_o (wb_mem_stb_o),
    .wbs_cti_o (wb_mem_cti_o),
    .wbs_bte_o (wb_mem_bte_o),
    .wbs_dat_i (wb_mem_dat_i),
    .wbs_ack_i (wb_mem_ack_i),
    .wbs_err_i (wb_mem_err_i),
    .wbs_rty_i (wb_mem_rty_i));

endmodule
