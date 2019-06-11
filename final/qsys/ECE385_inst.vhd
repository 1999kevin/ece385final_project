	component ECE385 is
		port (
			clk_clk                                        : in    std_logic                     := 'X';             -- clk
			eth0_mdio_mdc                                  : out   std_logic;                                        -- mdc
			eth0_mdio_mdio_in                              : in    std_logic                     := 'X';             -- mdio_in
			eth0_mdio_mdio_out                             : out   std_logic;                                        -- mdio_out
			eth0_mdio_mdio_oen                             : out   std_logic;                                        -- mdio_oen
			eth0_mdio_phy_addr                             : in    std_logic_vector(4 downto 0)  := (others => 'X'); -- phy_addr
			eth0_rx_fifo_in_data                           : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			eth0_rx_fifo_in_valid                          : in    std_logic                     := 'X';             -- valid
			eth0_rx_fifo_in_ready                          : out   std_logic;                                        -- ready
			eth0_rx_fifo_in_startofpacket                  : in    std_logic                     := 'X';             -- startofpacket
			eth0_rx_fifo_in_endofpacket                    : in    std_logic                     := 'X';             -- endofpacket
			eth0_rx_fifo_in_error                          : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- error
			eth0_rx_fifo_in_clk_clk                        : in    std_logic                     := 'X';             -- clk
			eth0_rx_fifo_in_clk_reset_reset_n              : in    std_logic                     := 'X';             -- reset_n
			eth0_tx_dma_buffer_in_0_data                   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- data
			eth0_tx_dma_buffer_in_0_valid                  : in    std_logic                     := 'X';             -- valid
			eth0_tx_dma_buffer_in_0_ready                  : out   std_logic;                                        -- ready
			eth0_tx_dma_buffer_in_0_startofpacket          : in    std_logic                     := 'X';             -- startofpacket
			eth0_tx_dma_buffer_in_0_endofpacket            : in    std_logic                     := 'X';             -- endofpacket
			eth0_tx_dma_buffer_in_0_empty                  : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- empty
			eth0_tx_dma_buffer_in_clk_0_clk                : in    std_logic                     := 'X';             -- clk
			eth0_tx_dma_buffer_in_rst_0_reset              : in    std_logic                     := 'X';             -- reset
			eth0_tx_dma_buffer_out_0_data                  : out   std_logic_vector(7 downto 0);                     -- data
			eth0_tx_dma_buffer_out_0_valid                 : out   std_logic;                                        -- valid
			eth0_tx_dma_buffer_out_0_ready                 : in    std_logic                     := 'X';             -- ready
			eth0_tx_dma_buffer_out_0_startofpacket         : out   std_logic;                                        -- startofpacket
			eth0_tx_dma_buffer_out_0_endofpacket           : out   std_logic;                                        -- endofpacket
			eth0_tx_fifo_out_data                          : out   std_logic_vector(31 downto 0);                    -- data
			eth0_tx_fifo_out_valid                         : out   std_logic;                                        -- valid
			eth0_tx_fifo_out_ready                         : in    std_logic                     := 'X';             -- ready
			eth0_tx_fifo_out_startofpacket                 : out   std_logic;                                        -- startofpacket
			eth0_tx_fifo_out_endofpacket                   : out   std_logic;                                        -- endofpacket
			eth0_tx_fifo_out_empty                         : out   std_logic_vector(1 downto 0);                     -- empty
			eth0_tx_fifo_out_clk_clk                       : in    std_logic                     := 'X';             -- clk
			eth0_tx_fifo_out_clk_reset_reset_n             : in    std_logic                     := 'X';             -- reset_n
			eth1_mdio_mdc                                  : out   std_logic;                                        -- mdc
			eth1_mdio_mdio_in                              : in    std_logic                     := 'X';             -- mdio_in
			eth1_mdio_mdio_out                             : out   std_logic;                                        -- mdio_out
			eth1_mdio_mdio_oen                             : out   std_logic;                                        -- mdio_oen
			eth1_mdio_phy_addr                             : in    std_logic_vector(4 downto 0)  := (others => 'X'); -- phy_addr
			eth1_rx_fifo_in_data                           : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			eth1_rx_fifo_in_valid                          : in    std_logic                     := 'X';             -- valid
			eth1_rx_fifo_in_ready                          : out   std_logic;                                        -- ready
			eth1_rx_fifo_in_startofpacket                  : in    std_logic                     := 'X';             -- startofpacket
			eth1_rx_fifo_in_endofpacket                    : in    std_logic                     := 'X';             -- endofpacket
			eth1_rx_fifo_in_error                          : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- error
			eth1_rx_fifo_in_clk_clk                        : in    std_logic                     := 'X';             -- clk
			eth1_rx_fifo_in_clk_reset_reset_n              : in    std_logic                     := 'X';             -- reset_n
			eth1_tx_dma_buffer_in_0_data                   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- data
			eth1_tx_dma_buffer_in_0_valid                  : in    std_logic                     := 'X';             -- valid
			eth1_tx_dma_buffer_in_0_ready                  : out   std_logic;                                        -- ready
			eth1_tx_dma_buffer_in_0_startofpacket          : in    std_logic                     := 'X';             -- startofpacket
			eth1_tx_dma_buffer_in_0_endofpacket            : in    std_logic                     := 'X';             -- endofpacket
			eth1_tx_dma_buffer_in_0_empty                  : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- empty
			eth1_tx_dma_buffer_in_clk_0_clk                : in    std_logic                     := 'X';             -- clk
			eth1_tx_dma_buffer_in_rst_0_reset              : in    std_logic                     := 'X';             -- reset
			eth1_tx_dma_buffer_out_0_data                  : out   std_logic_vector(7 downto 0);                     -- data
			eth1_tx_dma_buffer_out_0_valid                 : out   std_logic;                                        -- valid
			eth1_tx_dma_buffer_out_0_ready                 : in    std_logic                     := 'X';             -- ready
			eth1_tx_dma_buffer_out_0_startofpacket         : out   std_logic;                                        -- startofpacket
			eth1_tx_dma_buffer_out_0_endofpacket           : out   std_logic;                                        -- endofpacket
			eth1_tx_fifo_out_data                          : out   std_logic_vector(31 downto 0);                    -- data
			eth1_tx_fifo_out_valid                         : out   std_logic;                                        -- valid
			eth1_tx_fifo_out_ready                         : in    std_logic                     := 'X';             -- ready
			eth1_tx_fifo_out_startofpacket                 : out   std_logic;                                        -- startofpacket
			eth1_tx_fifo_out_endofpacket                   : out   std_logic;                                        -- endofpacket
			eth1_tx_fifo_out_empty                         : out   std_logic_vector(1 downto 0);                     -- empty
			eth1_tx_fifo_out_clk_clk                       : in    std_logic                     := 'X';             -- clk
			eth1_tx_fifo_out_clk_reset_reset_n             : in    std_logic                     := 'X';             -- reset_n
			io_hex_export                                  : out   std_logic_vector(31 downto 0);                    -- export
			io_keys_export                                 : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			io_led_green_export                            : out   std_logic_vector(8 downto 0);                     -- export
			io_led_red_export                              : out   std_logic_vector(17 downto 0);                    -- export
			io_switches_export                             : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			io_vga_sync_export                             : in    std_logic                     := 'X';             -- export
			nios2_pll_ethernet_clk                         : out   std_logic;                                        -- clk
			nios2_pll_sdram_clk                            : out   std_logic;                                        -- clk
			nios2_pll_vga_clk                              : out   std_logic;                                        -- clk
			otg_hpi_address_export                         : out   std_logic_vector(1 downto 0);                     -- export
			otg_hpi_cs_export                              : out   std_logic;                                        -- export
			otg_hpi_data_in_port                           : in    std_logic_vector(15 downto 0) := (others => 'X'); -- in_port
			otg_hpi_data_out_port                          : out   std_logic_vector(15 downto 0);                    -- out_port
			otg_hpi_r_export                               : out   std_logic;                                        -- export
			otg_hpi_reset_export                           : out   std_logic;                                        -- export
			otg_hpi_w_export                               : out   std_logic;                                        -- export
			reset_reset_n                                  : in    std_logic                     := 'X';             -- reset_n
			sdram_addr                                     : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba                                       : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n                                    : out   std_logic;                                        -- cas_n
			sdram_cke                                      : out   std_logic;                                        -- cke
			sdram_cs_n                                     : out   std_logic;                                        -- cs_n
			sdram_dq                                       : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_dqm                                      : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_ras_n                                    : out   std_logic;                                        -- ras_n
			sdram_we_n                                     : out   std_logic;                                        -- we_n
			sram_sram_addr                                 : out   std_logic_vector(19 downto 0);                    -- sram_addr
			sram_sram_ce_n                                 : out   std_logic;                                        -- sram_ce_n
			sram_sram_dq                                   : inout std_logic_vector(15 downto 0) := (others => 'X'); -- sram_dq
			sram_sram_lb_n                                 : out   std_logic;                                        -- sram_lb_n
			sram_sram_oe_n                                 : out   std_logic;                                        -- sram_oe_n
			sram_sram_ub_n                                 : out   std_logic;                                        -- sram_ub_n
			sram_sram_we_n                                 : out   std_logic;                                        -- sram_we_n
			usb_clk_clk                                    : in    std_logic                     := 'X';             -- clk
			usb_nios2_cpu_custom_instruction_master_readra : out   std_logic;                                        -- readra
			usb_reset_reset_n                              : in    std_logic                     := 'X';             -- reset_n
			vga_vga_drawx                                  : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- vga_drawx
			vga_vga_drawy                                  : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- vga_drawy
			vga_vga_val                                    : out   std_logic_vector(15 downto 0);                    -- vga_val
			vga_background_offset_export                   : out   std_logic_vector(31 downto 0);                    -- export
			vga_sprite_0_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_0_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_0_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_0_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_0_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_0_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_0_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_0_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_0_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_1_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_1_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_1_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_1_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_1_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_1_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_1_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_1_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_1_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_2_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_2_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_2_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_2_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_2_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_2_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_2_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_2_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_2_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_3_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_3_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_3_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_3_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_3_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_3_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_3_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_3_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_3_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_4_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_4_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_4_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_4_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_4_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_4_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_4_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_4_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_4_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_5_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_5_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_5_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_5_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_5_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_5_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_5_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_5_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_5_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_6_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_6_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_6_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_6_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_6_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_6_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_6_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_6_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_6_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_7_clk2_clk                          : in    std_logic                     := 'X';             -- clk
			vga_sprite_7_reset2_reset                      : in    std_logic                     := 'X';             -- reset
			vga_sprite_7_s2_address                        : in    std_logic_vector(10 downto 0) := (others => 'X'); -- address
			vga_sprite_7_s2_chipselect                     : in    std_logic                     := 'X';             -- chipselect
			vga_sprite_7_s2_clken                          : in    std_logic                     := 'X';             -- clken
			vga_sprite_7_s2_write                          : in    std_logic                     := 'X';             -- write
			vga_sprite_7_s2_readdata                       : out   std_logic_vector(15 downto 0);                    -- readdata
			vga_sprite_7_s2_writedata                      : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			vga_sprite_7_s2_byteenable                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable
			vga_sprite_params_pass_address                 : out   std_logic_vector(7 downto 0);                     -- address
			vga_sprite_params_pass_read                    : out   std_logic;                                        -- read
			vga_sprite_params_pass_readdata                : in    std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			vga_sprite_params_pass_write                   : out   std_logic;                                        -- write
			vga_sprite_params_pass_writedata               : out   std_logic_vector(31 downto 0);                    -- writedata
			vga_sprite_params_reset_reset                  : out   std_logic;                                        -- reset
			audio_pio_export                               : out   std_logic_vector(31 downto 0)                     -- export
		);
	end component ECE385;

	u0 : component ECE385
		port map (
			clk_clk                                        => CONNECTED_TO_clk_clk,                                        --                                     clk.clk
			eth0_mdio_mdc                                  => CONNECTED_TO_eth0_mdio_mdc,                                  --                               eth0_mdio.mdc
			eth0_mdio_mdio_in                              => CONNECTED_TO_eth0_mdio_mdio_in,                              --                                        .mdio_in
			eth0_mdio_mdio_out                             => CONNECTED_TO_eth0_mdio_mdio_out,                             --                                        .mdio_out
			eth0_mdio_mdio_oen                             => CONNECTED_TO_eth0_mdio_mdio_oen,                             --                                        .mdio_oen
			eth0_mdio_phy_addr                             => CONNECTED_TO_eth0_mdio_phy_addr,                             --                                        .phy_addr
			eth0_rx_fifo_in_data                           => CONNECTED_TO_eth0_rx_fifo_in_data,                           --                         eth0_rx_fifo_in.data
			eth0_rx_fifo_in_valid                          => CONNECTED_TO_eth0_rx_fifo_in_valid,                          --                                        .valid
			eth0_rx_fifo_in_ready                          => CONNECTED_TO_eth0_rx_fifo_in_ready,                          --                                        .ready
			eth0_rx_fifo_in_startofpacket                  => CONNECTED_TO_eth0_rx_fifo_in_startofpacket,                  --                                        .startofpacket
			eth0_rx_fifo_in_endofpacket                    => CONNECTED_TO_eth0_rx_fifo_in_endofpacket,                    --                                        .endofpacket
			eth0_rx_fifo_in_error                          => CONNECTED_TO_eth0_rx_fifo_in_error,                          --                                        .error
			eth0_rx_fifo_in_clk_clk                        => CONNECTED_TO_eth0_rx_fifo_in_clk_clk,                        --                     eth0_rx_fifo_in_clk.clk
			eth0_rx_fifo_in_clk_reset_reset_n              => CONNECTED_TO_eth0_rx_fifo_in_clk_reset_reset_n,              --               eth0_rx_fifo_in_clk_reset.reset_n
			eth0_tx_dma_buffer_in_0_data                   => CONNECTED_TO_eth0_tx_dma_buffer_in_0_data,                   --                 eth0_tx_dma_buffer_in_0.data
			eth0_tx_dma_buffer_in_0_valid                  => CONNECTED_TO_eth0_tx_dma_buffer_in_0_valid,                  --                                        .valid
			eth0_tx_dma_buffer_in_0_ready                  => CONNECTED_TO_eth0_tx_dma_buffer_in_0_ready,                  --                                        .ready
			eth0_tx_dma_buffer_in_0_startofpacket          => CONNECTED_TO_eth0_tx_dma_buffer_in_0_startofpacket,          --                                        .startofpacket
			eth0_tx_dma_buffer_in_0_endofpacket            => CONNECTED_TO_eth0_tx_dma_buffer_in_0_endofpacket,            --                                        .endofpacket
			eth0_tx_dma_buffer_in_0_empty                  => CONNECTED_TO_eth0_tx_dma_buffer_in_0_empty,                  --                                        .empty
			eth0_tx_dma_buffer_in_clk_0_clk                => CONNECTED_TO_eth0_tx_dma_buffer_in_clk_0_clk,                --             eth0_tx_dma_buffer_in_clk_0.clk
			eth0_tx_dma_buffer_in_rst_0_reset              => CONNECTED_TO_eth0_tx_dma_buffer_in_rst_0_reset,              --             eth0_tx_dma_buffer_in_rst_0.reset
			eth0_tx_dma_buffer_out_0_data                  => CONNECTED_TO_eth0_tx_dma_buffer_out_0_data,                  --                eth0_tx_dma_buffer_out_0.data
			eth0_tx_dma_buffer_out_0_valid                 => CONNECTED_TO_eth0_tx_dma_buffer_out_0_valid,                 --                                        .valid
			eth0_tx_dma_buffer_out_0_ready                 => CONNECTED_TO_eth0_tx_dma_buffer_out_0_ready,                 --                                        .ready
			eth0_tx_dma_buffer_out_0_startofpacket         => CONNECTED_TO_eth0_tx_dma_buffer_out_0_startofpacket,         --                                        .startofpacket
			eth0_tx_dma_buffer_out_0_endofpacket           => CONNECTED_TO_eth0_tx_dma_buffer_out_0_endofpacket,           --                                        .endofpacket
			eth0_tx_fifo_out_data                          => CONNECTED_TO_eth0_tx_fifo_out_data,                          --                        eth0_tx_fifo_out.data
			eth0_tx_fifo_out_valid                         => CONNECTED_TO_eth0_tx_fifo_out_valid,                         --                                        .valid
			eth0_tx_fifo_out_ready                         => CONNECTED_TO_eth0_tx_fifo_out_ready,                         --                                        .ready
			eth0_tx_fifo_out_startofpacket                 => CONNECTED_TO_eth0_tx_fifo_out_startofpacket,                 --                                        .startofpacket
			eth0_tx_fifo_out_endofpacket                   => CONNECTED_TO_eth0_tx_fifo_out_endofpacket,                   --                                        .endofpacket
			eth0_tx_fifo_out_empty                         => CONNECTED_TO_eth0_tx_fifo_out_empty,                         --                                        .empty
			eth0_tx_fifo_out_clk_clk                       => CONNECTED_TO_eth0_tx_fifo_out_clk_clk,                       --                    eth0_tx_fifo_out_clk.clk
			eth0_tx_fifo_out_clk_reset_reset_n             => CONNECTED_TO_eth0_tx_fifo_out_clk_reset_reset_n,             --              eth0_tx_fifo_out_clk_reset.reset_n
			eth1_mdio_mdc                                  => CONNECTED_TO_eth1_mdio_mdc,                                  --                               eth1_mdio.mdc
			eth1_mdio_mdio_in                              => CONNECTED_TO_eth1_mdio_mdio_in,                              --                                        .mdio_in
			eth1_mdio_mdio_out                             => CONNECTED_TO_eth1_mdio_mdio_out,                             --                                        .mdio_out
			eth1_mdio_mdio_oen                             => CONNECTED_TO_eth1_mdio_mdio_oen,                             --                                        .mdio_oen
			eth1_mdio_phy_addr                             => CONNECTED_TO_eth1_mdio_phy_addr,                             --                                        .phy_addr
			eth1_rx_fifo_in_data                           => CONNECTED_TO_eth1_rx_fifo_in_data,                           --                         eth1_rx_fifo_in.data
			eth1_rx_fifo_in_valid                          => CONNECTED_TO_eth1_rx_fifo_in_valid,                          --                                        .valid
			eth1_rx_fifo_in_ready                          => CONNECTED_TO_eth1_rx_fifo_in_ready,                          --                                        .ready
			eth1_rx_fifo_in_startofpacket                  => CONNECTED_TO_eth1_rx_fifo_in_startofpacket,                  --                                        .startofpacket
			eth1_rx_fifo_in_endofpacket                    => CONNECTED_TO_eth1_rx_fifo_in_endofpacket,                    --                                        .endofpacket
			eth1_rx_fifo_in_error                          => CONNECTED_TO_eth1_rx_fifo_in_error,                          --                                        .error
			eth1_rx_fifo_in_clk_clk                        => CONNECTED_TO_eth1_rx_fifo_in_clk_clk,                        --                     eth1_rx_fifo_in_clk.clk
			eth1_rx_fifo_in_clk_reset_reset_n              => CONNECTED_TO_eth1_rx_fifo_in_clk_reset_reset_n,              --               eth1_rx_fifo_in_clk_reset.reset_n
			eth1_tx_dma_buffer_in_0_data                   => CONNECTED_TO_eth1_tx_dma_buffer_in_0_data,                   --                 eth1_tx_dma_buffer_in_0.data
			eth1_tx_dma_buffer_in_0_valid                  => CONNECTED_TO_eth1_tx_dma_buffer_in_0_valid,                  --                                        .valid
			eth1_tx_dma_buffer_in_0_ready                  => CONNECTED_TO_eth1_tx_dma_buffer_in_0_ready,                  --                                        .ready
			eth1_tx_dma_buffer_in_0_startofpacket          => CONNECTED_TO_eth1_tx_dma_buffer_in_0_startofpacket,          --                                        .startofpacket
			eth1_tx_dma_buffer_in_0_endofpacket            => CONNECTED_TO_eth1_tx_dma_buffer_in_0_endofpacket,            --                                        .endofpacket
			eth1_tx_dma_buffer_in_0_empty                  => CONNECTED_TO_eth1_tx_dma_buffer_in_0_empty,                  --                                        .empty
			eth1_tx_dma_buffer_in_clk_0_clk                => CONNECTED_TO_eth1_tx_dma_buffer_in_clk_0_clk,                --             eth1_tx_dma_buffer_in_clk_0.clk
			eth1_tx_dma_buffer_in_rst_0_reset              => CONNECTED_TO_eth1_tx_dma_buffer_in_rst_0_reset,              --             eth1_tx_dma_buffer_in_rst_0.reset
			eth1_tx_dma_buffer_out_0_data                  => CONNECTED_TO_eth1_tx_dma_buffer_out_0_data,                  --                eth1_tx_dma_buffer_out_0.data
			eth1_tx_dma_buffer_out_0_valid                 => CONNECTED_TO_eth1_tx_dma_buffer_out_0_valid,                 --                                        .valid
			eth1_tx_dma_buffer_out_0_ready                 => CONNECTED_TO_eth1_tx_dma_buffer_out_0_ready,                 --                                        .ready
			eth1_tx_dma_buffer_out_0_startofpacket         => CONNECTED_TO_eth1_tx_dma_buffer_out_0_startofpacket,         --                                        .startofpacket
			eth1_tx_dma_buffer_out_0_endofpacket           => CONNECTED_TO_eth1_tx_dma_buffer_out_0_endofpacket,           --                                        .endofpacket
			eth1_tx_fifo_out_data                          => CONNECTED_TO_eth1_tx_fifo_out_data,                          --                        eth1_tx_fifo_out.data
			eth1_tx_fifo_out_valid                         => CONNECTED_TO_eth1_tx_fifo_out_valid,                         --                                        .valid
			eth1_tx_fifo_out_ready                         => CONNECTED_TO_eth1_tx_fifo_out_ready,                         --                                        .ready
			eth1_tx_fifo_out_startofpacket                 => CONNECTED_TO_eth1_tx_fifo_out_startofpacket,                 --                                        .startofpacket
			eth1_tx_fifo_out_endofpacket                   => CONNECTED_TO_eth1_tx_fifo_out_endofpacket,                   --                                        .endofpacket
			eth1_tx_fifo_out_empty                         => CONNECTED_TO_eth1_tx_fifo_out_empty,                         --                                        .empty
			eth1_tx_fifo_out_clk_clk                       => CONNECTED_TO_eth1_tx_fifo_out_clk_clk,                       --                    eth1_tx_fifo_out_clk.clk
			eth1_tx_fifo_out_clk_reset_reset_n             => CONNECTED_TO_eth1_tx_fifo_out_clk_reset_reset_n,             --              eth1_tx_fifo_out_clk_reset.reset_n
			io_hex_export                                  => CONNECTED_TO_io_hex_export,                                  --                                  io_hex.export
			io_keys_export                                 => CONNECTED_TO_io_keys_export,                                 --                                 io_keys.export
			io_led_green_export                            => CONNECTED_TO_io_led_green_export,                            --                            io_led_green.export
			io_led_red_export                              => CONNECTED_TO_io_led_red_export,                              --                              io_led_red.export
			io_switches_export                             => CONNECTED_TO_io_switches_export,                             --                             io_switches.export
			io_vga_sync_export                             => CONNECTED_TO_io_vga_sync_export,                             --                             io_vga_sync.export
			nios2_pll_ethernet_clk                         => CONNECTED_TO_nios2_pll_ethernet_clk,                         --                      nios2_pll_ethernet.clk
			nios2_pll_sdram_clk                            => CONNECTED_TO_nios2_pll_sdram_clk,                            --                         nios2_pll_sdram.clk
			nios2_pll_vga_clk                              => CONNECTED_TO_nios2_pll_vga_clk,                              --                           nios2_pll_vga.clk
			otg_hpi_address_export                         => CONNECTED_TO_otg_hpi_address_export,                         --                         otg_hpi_address.export
			otg_hpi_cs_export                              => CONNECTED_TO_otg_hpi_cs_export,                              --                              otg_hpi_cs.export
			otg_hpi_data_in_port                           => CONNECTED_TO_otg_hpi_data_in_port,                           --                            otg_hpi_data.in_port
			otg_hpi_data_out_port                          => CONNECTED_TO_otg_hpi_data_out_port,                          --                                        .out_port
			otg_hpi_r_export                               => CONNECTED_TO_otg_hpi_r_export,                               --                               otg_hpi_r.export
			otg_hpi_reset_export                           => CONNECTED_TO_otg_hpi_reset_export,                           --                           otg_hpi_reset.export
			otg_hpi_w_export                               => CONNECTED_TO_otg_hpi_w_export,                               --                               otg_hpi_w.export
			reset_reset_n                                  => CONNECTED_TO_reset_reset_n,                                  --                                   reset.reset_n
			sdram_addr                                     => CONNECTED_TO_sdram_addr,                                     --                                   sdram.addr
			sdram_ba                                       => CONNECTED_TO_sdram_ba,                                       --                                        .ba
			sdram_cas_n                                    => CONNECTED_TO_sdram_cas_n,                                    --                                        .cas_n
			sdram_cke                                      => CONNECTED_TO_sdram_cke,                                      --                                        .cke
			sdram_cs_n                                     => CONNECTED_TO_sdram_cs_n,                                     --                                        .cs_n
			sdram_dq                                       => CONNECTED_TO_sdram_dq,                                       --                                        .dq
			sdram_dqm                                      => CONNECTED_TO_sdram_dqm,                                      --                                        .dqm
			sdram_ras_n                                    => CONNECTED_TO_sdram_ras_n,                                    --                                        .ras_n
			sdram_we_n                                     => CONNECTED_TO_sdram_we_n,                                     --                                        .we_n
			sram_sram_addr                                 => CONNECTED_TO_sram_sram_addr,                                 --                                    sram.sram_addr
			sram_sram_ce_n                                 => CONNECTED_TO_sram_sram_ce_n,                                 --                                        .sram_ce_n
			sram_sram_dq                                   => CONNECTED_TO_sram_sram_dq,                                   --                                        .sram_dq
			sram_sram_lb_n                                 => CONNECTED_TO_sram_sram_lb_n,                                 --                                        .sram_lb_n
			sram_sram_oe_n                                 => CONNECTED_TO_sram_sram_oe_n,                                 --                                        .sram_oe_n
			sram_sram_ub_n                                 => CONNECTED_TO_sram_sram_ub_n,                                 --                                        .sram_ub_n
			sram_sram_we_n                                 => CONNECTED_TO_sram_sram_we_n,                                 --                                        .sram_we_n
			usb_clk_clk                                    => CONNECTED_TO_usb_clk_clk,                                    --                                 usb_clk.clk
			usb_nios2_cpu_custom_instruction_master_readra => CONNECTED_TO_usb_nios2_cpu_custom_instruction_master_readra, -- usb_nios2_cpu_custom_instruction_master.readra
			usb_reset_reset_n                              => CONNECTED_TO_usb_reset_reset_n,                              --                               usb_reset.reset_n
			vga_vga_drawx                                  => CONNECTED_TO_vga_vga_drawx,                                  --                                     vga.vga_drawx
			vga_vga_drawy                                  => CONNECTED_TO_vga_vga_drawy,                                  --                                        .vga_drawy
			vga_vga_val                                    => CONNECTED_TO_vga_vga_val,                                    --                                        .vga_val
			vga_background_offset_export                   => CONNECTED_TO_vga_background_offset_export,                   --                   vga_background_offset.export
			vga_sprite_0_clk2_clk                          => CONNECTED_TO_vga_sprite_0_clk2_clk,                          --                       vga_sprite_0_clk2.clk
			vga_sprite_0_reset2_reset                      => CONNECTED_TO_vga_sprite_0_reset2_reset,                      --                     vga_sprite_0_reset2.reset
			vga_sprite_0_s2_address                        => CONNECTED_TO_vga_sprite_0_s2_address,                        --                         vga_sprite_0_s2.address
			vga_sprite_0_s2_chipselect                     => CONNECTED_TO_vga_sprite_0_s2_chipselect,                     --                                        .chipselect
			vga_sprite_0_s2_clken                          => CONNECTED_TO_vga_sprite_0_s2_clken,                          --                                        .clken
			vga_sprite_0_s2_write                          => CONNECTED_TO_vga_sprite_0_s2_write,                          --                                        .write
			vga_sprite_0_s2_readdata                       => CONNECTED_TO_vga_sprite_0_s2_readdata,                       --                                        .readdata
			vga_sprite_0_s2_writedata                      => CONNECTED_TO_vga_sprite_0_s2_writedata,                      --                                        .writedata
			vga_sprite_0_s2_byteenable                     => CONNECTED_TO_vga_sprite_0_s2_byteenable,                     --                                        .byteenable
			vga_sprite_1_clk2_clk                          => CONNECTED_TO_vga_sprite_1_clk2_clk,                          --                       vga_sprite_1_clk2.clk
			vga_sprite_1_reset2_reset                      => CONNECTED_TO_vga_sprite_1_reset2_reset,                      --                     vga_sprite_1_reset2.reset
			vga_sprite_1_s2_address                        => CONNECTED_TO_vga_sprite_1_s2_address,                        --                         vga_sprite_1_s2.address
			vga_sprite_1_s2_chipselect                     => CONNECTED_TO_vga_sprite_1_s2_chipselect,                     --                                        .chipselect
			vga_sprite_1_s2_clken                          => CONNECTED_TO_vga_sprite_1_s2_clken,                          --                                        .clken
			vga_sprite_1_s2_write                          => CONNECTED_TO_vga_sprite_1_s2_write,                          --                                        .write
			vga_sprite_1_s2_readdata                       => CONNECTED_TO_vga_sprite_1_s2_readdata,                       --                                        .readdata
			vga_sprite_1_s2_writedata                      => CONNECTED_TO_vga_sprite_1_s2_writedata,                      --                                        .writedata
			vga_sprite_1_s2_byteenable                     => CONNECTED_TO_vga_sprite_1_s2_byteenable,                     --                                        .byteenable
			vga_sprite_2_clk2_clk                          => CONNECTED_TO_vga_sprite_2_clk2_clk,                          --                       vga_sprite_2_clk2.clk
			vga_sprite_2_reset2_reset                      => CONNECTED_TO_vga_sprite_2_reset2_reset,                      --                     vga_sprite_2_reset2.reset
			vga_sprite_2_s2_address                        => CONNECTED_TO_vga_sprite_2_s2_address,                        --                         vga_sprite_2_s2.address
			vga_sprite_2_s2_chipselect                     => CONNECTED_TO_vga_sprite_2_s2_chipselect,                     --                                        .chipselect
			vga_sprite_2_s2_clken                          => CONNECTED_TO_vga_sprite_2_s2_clken,                          --                                        .clken
			vga_sprite_2_s2_write                          => CONNECTED_TO_vga_sprite_2_s2_write,                          --                                        .write
			vga_sprite_2_s2_readdata                       => CONNECTED_TO_vga_sprite_2_s2_readdata,                       --                                        .readdata
			vga_sprite_2_s2_writedata                      => CONNECTED_TO_vga_sprite_2_s2_writedata,                      --                                        .writedata
			vga_sprite_2_s2_byteenable                     => CONNECTED_TO_vga_sprite_2_s2_byteenable,                     --                                        .byteenable
			vga_sprite_3_clk2_clk                          => CONNECTED_TO_vga_sprite_3_clk2_clk,                          --                       vga_sprite_3_clk2.clk
			vga_sprite_3_reset2_reset                      => CONNECTED_TO_vga_sprite_3_reset2_reset,                      --                     vga_sprite_3_reset2.reset
			vga_sprite_3_s2_address                        => CONNECTED_TO_vga_sprite_3_s2_address,                        --                         vga_sprite_3_s2.address
			vga_sprite_3_s2_chipselect                     => CONNECTED_TO_vga_sprite_3_s2_chipselect,                     --                                        .chipselect
			vga_sprite_3_s2_clken                          => CONNECTED_TO_vga_sprite_3_s2_clken,                          --                                        .clken
			vga_sprite_3_s2_write                          => CONNECTED_TO_vga_sprite_3_s2_write,                          --                                        .write
			vga_sprite_3_s2_readdata                       => CONNECTED_TO_vga_sprite_3_s2_readdata,                       --                                        .readdata
			vga_sprite_3_s2_writedata                      => CONNECTED_TO_vga_sprite_3_s2_writedata,                      --                                        .writedata
			vga_sprite_3_s2_byteenable                     => CONNECTED_TO_vga_sprite_3_s2_byteenable,                     --                                        .byteenable
			vga_sprite_4_clk2_clk                          => CONNECTED_TO_vga_sprite_4_clk2_clk,                          --                       vga_sprite_4_clk2.clk
			vga_sprite_4_reset2_reset                      => CONNECTED_TO_vga_sprite_4_reset2_reset,                      --                     vga_sprite_4_reset2.reset
			vga_sprite_4_s2_address                        => CONNECTED_TO_vga_sprite_4_s2_address,                        --                         vga_sprite_4_s2.address
			vga_sprite_4_s2_chipselect                     => CONNECTED_TO_vga_sprite_4_s2_chipselect,                     --                                        .chipselect
			vga_sprite_4_s2_clken                          => CONNECTED_TO_vga_sprite_4_s2_clken,                          --                                        .clken
			vga_sprite_4_s2_write                          => CONNECTED_TO_vga_sprite_4_s2_write,                          --                                        .write
			vga_sprite_4_s2_readdata                       => CONNECTED_TO_vga_sprite_4_s2_readdata,                       --                                        .readdata
			vga_sprite_4_s2_writedata                      => CONNECTED_TO_vga_sprite_4_s2_writedata,                      --                                        .writedata
			vga_sprite_4_s2_byteenable                     => CONNECTED_TO_vga_sprite_4_s2_byteenable,                     --                                        .byteenable
			vga_sprite_5_clk2_clk                          => CONNECTED_TO_vga_sprite_5_clk2_clk,                          --                       vga_sprite_5_clk2.clk
			vga_sprite_5_reset2_reset                      => CONNECTED_TO_vga_sprite_5_reset2_reset,                      --                     vga_sprite_5_reset2.reset
			vga_sprite_5_s2_address                        => CONNECTED_TO_vga_sprite_5_s2_address,                        --                         vga_sprite_5_s2.address
			vga_sprite_5_s2_chipselect                     => CONNECTED_TO_vga_sprite_5_s2_chipselect,                     --                                        .chipselect
			vga_sprite_5_s2_clken                          => CONNECTED_TO_vga_sprite_5_s2_clken,                          --                                        .clken
			vga_sprite_5_s2_write                          => CONNECTED_TO_vga_sprite_5_s2_write,                          --                                        .write
			vga_sprite_5_s2_readdata                       => CONNECTED_TO_vga_sprite_5_s2_readdata,                       --                                        .readdata
			vga_sprite_5_s2_writedata                      => CONNECTED_TO_vga_sprite_5_s2_writedata,                      --                                        .writedata
			vga_sprite_5_s2_byteenable                     => CONNECTED_TO_vga_sprite_5_s2_byteenable,                     --                                        .byteenable
			vga_sprite_6_clk2_clk                          => CONNECTED_TO_vga_sprite_6_clk2_clk,                          --                       vga_sprite_6_clk2.clk
			vga_sprite_6_reset2_reset                      => CONNECTED_TO_vga_sprite_6_reset2_reset,                      --                     vga_sprite_6_reset2.reset
			vga_sprite_6_s2_address                        => CONNECTED_TO_vga_sprite_6_s2_address,                        --                         vga_sprite_6_s2.address
			vga_sprite_6_s2_chipselect                     => CONNECTED_TO_vga_sprite_6_s2_chipselect,                     --                                        .chipselect
			vga_sprite_6_s2_clken                          => CONNECTED_TO_vga_sprite_6_s2_clken,                          --                                        .clken
			vga_sprite_6_s2_write                          => CONNECTED_TO_vga_sprite_6_s2_write,                          --                                        .write
			vga_sprite_6_s2_readdata                       => CONNECTED_TO_vga_sprite_6_s2_readdata,                       --                                        .readdata
			vga_sprite_6_s2_writedata                      => CONNECTED_TO_vga_sprite_6_s2_writedata,                      --                                        .writedata
			vga_sprite_6_s2_byteenable                     => CONNECTED_TO_vga_sprite_6_s2_byteenable,                     --                                        .byteenable
			vga_sprite_7_clk2_clk                          => CONNECTED_TO_vga_sprite_7_clk2_clk,                          --                       vga_sprite_7_clk2.clk
			vga_sprite_7_reset2_reset                      => CONNECTED_TO_vga_sprite_7_reset2_reset,                      --                     vga_sprite_7_reset2.reset
			vga_sprite_7_s2_address                        => CONNECTED_TO_vga_sprite_7_s2_address,                        --                         vga_sprite_7_s2.address
			vga_sprite_7_s2_chipselect                     => CONNECTED_TO_vga_sprite_7_s2_chipselect,                     --                                        .chipselect
			vga_sprite_7_s2_clken                          => CONNECTED_TO_vga_sprite_7_s2_clken,                          --                                        .clken
			vga_sprite_7_s2_write                          => CONNECTED_TO_vga_sprite_7_s2_write,                          --                                        .write
			vga_sprite_7_s2_readdata                       => CONNECTED_TO_vga_sprite_7_s2_readdata,                       --                                        .readdata
			vga_sprite_7_s2_writedata                      => CONNECTED_TO_vga_sprite_7_s2_writedata,                      --                                        .writedata
			vga_sprite_7_s2_byteenable                     => CONNECTED_TO_vga_sprite_7_s2_byteenable,                     --                                        .byteenable
			vga_sprite_params_pass_address                 => CONNECTED_TO_vga_sprite_params_pass_address,                 --                  vga_sprite_params_pass.address
			vga_sprite_params_pass_read                    => CONNECTED_TO_vga_sprite_params_pass_read,                    --                                        .read
			vga_sprite_params_pass_readdata                => CONNECTED_TO_vga_sprite_params_pass_readdata,                --                                        .readdata
			vga_sprite_params_pass_write                   => CONNECTED_TO_vga_sprite_params_pass_write,                   --                                        .write
			vga_sprite_params_pass_writedata               => CONNECTED_TO_vga_sprite_params_pass_writedata,               --                                        .writedata
			vga_sprite_params_reset_reset                  => CONNECTED_TO_vga_sprite_params_reset_reset,                  --                 vga_sprite_params_reset.reset
			audio_pio_export                               => CONNECTED_TO_audio_pio_export                                --                               audio_pio.export
		);

