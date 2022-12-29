----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:15 10/29/2022 
-- Design Name: 
-- Module Name:    processor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor is
			port (
						clock : in std_logic;
						--zero_signal_s : out std_logic;
						--alu_in_m : in std_logic;
						--reg_reset : in std_logic ;
						pc_reset : in std_logic;
						--pc_enable : in std_logic;
						--top : out std_logic;
						--pc_write_signal : in std_logic;
						
						--alu_immediate_signal : out std_logic_vector(31 downto 0);
						alu_out_m : out std_logic
			
			);
end processor;

architecture Behavioral of processor is

	component alu is 
	
		    Port ( s: in std_logic_vector( 3 downto 0) ;   -- select 
			  clock : in  STD_LOGIC;						-- clock 
           A : in  STD_LOGIC_VECTOR (31 downto 0);  -- input A 
           B : in  STD_LOGIC_VECTOR (31 downto 0);	-- input B
           cin : in  STD_LOGIC;							-- Cin
           r : out  STD_LOGIC_VECTOR (31 downto 0);  -- result 1
           sr : out  STD_LOGIC_VECTOR (31 downto 0); --second result 2
		   reset : in std_logic;
		   shamt :in std_logic_vector(4 downto 0 );
		   
           cout : out  STD_LOGIC);                 -- cout

	end component;
	
	
	component Control_unit is 
		Port ( 
				op_code : in std_logic_vector( 5 downto 0 ) ;
				clock : in std_logic ;
				reset : in std_logic;
				ALU_Src : out std_logic;
				Mem_write :out std_logic_vector(3 downto 0 );
				Reg_write :out std_logic;
				Reg_dst :out std_logic;
				ALU_op : out std_logic_vector( 1 downto 0 ) ;
				Mem_to_reg : out std_logic;
				Mem_read : out std_logic;
				Branch : out std_logic;
				Jump :out std_logic;
				alu_count : in integer ;
				status : out std_logic;
				dot_mux_sel: out std_logic;
				dot_read_enable : out std_logic;
				dot_sel_result : out std_logic;
				dot_write_enable : out std_logic;
				sel_additional_register : out std_logic
				
				);
	
	end component ;
		
	
	component register_file is 
    Port ( reg_a : out  STD_LOGIC_VECTOR (31 downto 0);
           reg_b : out  STD_LOGIC_VECTOR (31 downto 0);
           reg_w : in  STD_LOGIC_VECTOR (31 downto 0);
           enable_write : in  STD_LOGIC;
           sel_reg_a : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_reg_b : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_reg_w : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
		   alu_second_result: in std_logic_vector(31 downto 0) ;
		   select_additional_register : in std_logic
           );
	end component ;
	
	component alu_control is 
		Port ( ALU_op : in  STD_LOGIC_VECTOR (1 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
		   count : out integer ;
           alu_control_input : out  STD_LOGIC_VECTOR (3 downto 0));
	end component ;


	component memory_block_module IS
		PORT (
			clka : IN STD_LOGIC;
			ena : IN STD_LOGIC;
			wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END component;
	
	component mux_mem is 
			Port ( mem : in  STD_LOGIC_VECTOR (31 downto 0);
				alu : in  STD_LOGIC_VECTOR (31 downto 0);
				mem_to_reg : in  STD_LOGIC;
				to_reg : out  STD_LOGIC_VECTOR (31 downto 0));
	end component ;

	component mux_alu is 
			Port ( read_data_2 : in  STD_LOGIC_VECTOR (31 downto 0);
				immediate : in  STD_LOGIC_VECTOR (31 downto 0);
				alu_src : in  STD_LOGIC;
				alu_input_2 : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component mux_reg is 
			Port ( sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
				sel3 : in  STD_LOGIC_VECTOR (4 downto 0);
				reg_dst : in  STD_LOGIC;
				write_reg : out  STD_LOGIC_VECTOR (4 downto 0));
	end component ;

--	component instruction_block is 
--		Port ( pc : in  STD_LOGIC_VECTOR (4 downto 0);
--		instruction : out  STD_LOGIC_VECTOR (31 downto 0));
--	end component ;
	
--	component blk_mem_gen_v7_1 IS
--	  PORT (
--		 clka : IN STD_LOGIC;
--		 ena : IN STD_LOGIC;
--		 wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--		 addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
--		 dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--		 douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
--	  );
--	END component ;
	
    component instruction_block_module IS
        PORT (
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
            );
    END component;
	
	component sign_extend is 
		    Port ( a_bit : in  STD_LOGIC_VECTOR (15 downto 0);
           b_bit : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component add_branch is
		Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
			   b : in  STD_LOGIC_VECTOR (31 downto 0);
			   output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component add_pc is
		Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
			   output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component shift_left_2 is
		Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
			   output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component branch_and is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
	
	component pc_mux is
    Port ( pc_4 : in  STD_LOGIC_VECTOR (31 downto 0);
           immediate : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
		   --top : out std_logic;
           output1 : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component pc_main is 
		    Port ( pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
				clock : in std_logic ;
				reset : in std_logic ;
				pc_write : in std_logic ;
				pc_enable : in std_logic;
           pc_out : out  STD_LOGIC_VECTOR (31 downto 0));
	end component ;
	
	component zero_m is 
		    Port ( r : in  STD_LOGIC_VECTOR (31 downto 0);
			
			--top: out std_logic;
           zero : out  STD_LOGIC);
	end component;
	
	component pc_main_helper is 
		Port ( pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
		   to_adder : out std_logic_vector(31 downto 0 );
           to_memory : out  STD_LOGIC_VECTOR (8 downto 0)
           );
	end component;
	
	component jump_shift_left_2 is 
		    Port ( a : in  STD_LOGIC_VECTOR (25 downto 0);
           b : out  STD_LOGIC_VECTOR (27 downto 0));
	end component;
	
	component jump_mux is
    Port ( sel : in  STD_LOGIC;
           jump1 : in  STD_LOGIC_VECTOR (27 downto 0);
			  jump2 : in std_logic_vector (3 downto 0);
           pc_4_imm : in  STD_LOGIC_VECTOR (31 downto 0);
           pc_final : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component mem_addr_helper is 
		Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           address : out  STD_LOGIC_VECTOR (11 downto 0));
	end component;

	component dot_mux_module is
		Port ( sel : in  STD_LOGIC;
			   registers : in  STD_LOGIC_VECTOR (31 downto 0);
			   dot : in  STD_LOGIC_VECTOR (31 downto 0);
			   dout : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component Dot_prod_module is
		Port (clock : in STD_LOGIC;
		din : in std_logic_vector(31 downto 0 );
		read_enable : in std_logic;
		sel_register : in std_logic_vector(2 downto 0);
		sel_result : in std_logic; 
		write_enable : in std_logic;
		result : out STD_LOGIC_VECTOR (31 downto 0));
	end component ;

	-------------instr------------
	--signal instr : std_logic_vector ( 15 downto 0 ) ;
	--signal pc_in : std_logic_vector ( 31 downto 0 ) ;
	signal pc_out_signal : std_logic_vector ( 31 downto 0 ) ;
	signal ena_signal : std_logic ;
	signal wea_signal : std_logic_vector(3 downto 0 );
	signal dina_signal : std_logic_vector(31 downto 0);
	
	
	
	----------------Control_Unit----------------------------
	signal alu_op_s : std_logic_vector( 1 downto 0 ) ;
	signal op_code : std_logic_vector( 5 downto 0 ) ;
	signal reg_dst_s ,branch_s , mem_read_s , mem_to_reg_s  ,alu_src_s , reg_write_s , jump_signal :std_logic;
	signal dot_sel_control_signal : std_logic;
	signal mem_write_s : std_logic_vector(3 downto 0);
	--------------------------------------------------------
	
	
	---------------Reg file ----------------------------
	signal sel_reg_a , sel_reg_b , sel_reg_w : STD_LOGIC_VECTOR (4 downto 0);
	signal reg_a , reg_b ,read_data_2 : std_logic_vector ( 31 downto  0 );
	signal reg_w_s : std_logic_vector ( 31 downto 0 ) ;
	signal sel_additional_register_signal : std_logic;
	--signal reg_reset : std_logic := '0';
	
	----------------------------------------------------
	
	


	-----------------------ALU----------------------------------
	signal alu_result_1 : std_logic_vector ( 31 downto 0) ;
	signal alu_result_2 : std_logic_vector ( 31 downto 0);
	signal alu_in_1 :std_logic_vector ( 31 downto 0);
	signal alu_in_2 :std_logic_vector ( 31 downto 0);
	signal alu_control_line_s : std_logic_vector ( 3 downto 0);
	signal alu_cin,alu_cout : std_logic;
	---------------------------------------------------------------
	
	------------------ALU control -----------------
	signal funct : std_logic_vector ( 5 downto 0) ;
	signal alu_count : integer;
	--------------------------------------------------
	signal delete : std_logic;
	signal read_data : std_logic_vector (31 downto 0);

	signal immediate : std_logic_vector (15 downto 0 );
	signal immediate_extend : std_logic_vector ( 31 downto 0 ) ;
	signal sel_3 : std_logic_vector (4 downto 0);
	signal f_code : std_logic_vector ( 5 downto 0 );
	signal instr_full : std_logic_vector ( 31 downto 0 );
	signal pc_signal , pc_plus_4_signal , pc_final ,shift_left_2_signal , pc_add_immediate_signal , pc_adder_signal : std_logic_vector(31 downto 0) ;
	signal pc_4_imm_signal : std_logic_vector(31 downto 0) ;
	signal jump_address_28 : std_logic_vector(27 downto 0);
	signal branch_and_signal  , zero_signal: std_logic ;
	
	signal pc_go_next_signal_alu , pc_update_signal , pc_next_write  : std_logic ; --pc_write_signal
	signal address_to_memory : std_logic_vector(11 downto 0);
	signal  pc_to_instr  : std_logic_vector(8 downto 0) ;
	
	signal write_data_to_memory_unit : std_logic_vector(31 downto 0);

	-----dot product unit 
	signal dot_prod_result : std_logic_vector (31 downto 0 );
	signal dot_read_enable , dot_write_enable , dot_sel_result : std_logic;
	
begin
		pc_plus_four : add_pc port map(a=> pc_signal , output=> pc_plus_4_signal );
		pc_plus_immediate : add_branch port map(a=>pc_plus_4_signal ,      b=>shift_left_2_signal , output=>  pc_add_immediate_signal );
		shift_left_two : shift_left_2 port map(a=> immediate_extend,  output=> shift_left_2_signal);
		zero_module : zero_m port map(r=>alu_result_1, zero=> zero_signal);
		branch_and_module : branch_and port map(a=>branch_s ,b=> zero_signal ,o=> branch_and_signal );

		mux_pc : pc_mux port map(pc_4=>pc_plus_4_signal , immediate=>  pc_add_immediate_signal , sel=>  branch_and_signal , 	output1=>pc_4_imm_signal );
		
		mux_jump : jump_mux port map(sel=>jump_signal ,jump2=>pc_plus_4_signal(31 downto 28) , jump1 =>jump_address_28 ,  pc_4_imm =>pc_4_imm_signal , pc_final=>pc_final );
		
		pc_main_module : pc_main port map (pc_in=>pc_final ,clock=> clock , reset=> pc_reset  ,pc_write=> pc_go_next_signal_alu, pc_enable=> pc_go_next_signal_alu,  pc_out=>  pc_signal );
		pc_main_extend : pc_main_helper port map( pc_in=> pc_signal, to_adder=>  pc_adder_signal ,  to_memory=>  pc_to_instr);
		
		jump_shift : jump_shift_left_2 port map(a=>instr_full(25 downto 0) , b=>jump_address_28 );
		
		instruction_block : instruction_block_module port map(clka=> clock , wea=>wea_signal , addra => pc_signal ,dina=>dina_signal , douta=> instr_full  );
		op_code  <= instr_full(31 downto 26);
		sel_reg_a <= instr_full(25 downto 21);
		sel_reg_b <= instr_full(20 downto 16);
		
		sign_ext : sign_extend port map(a_bit=>instr_full(15 downto 0), b_bit=> immediate_extend);

		reg_mux : mux_reg port map ( sel2=>sel_reg_b , sel3=>  instr_full(15 downto 11) , reg_dst=> reg_dst_s ,write_reg=> sel_reg_w );
		registers : register_file port map(reg_a=>alu_in_1, reg_b=>	read_data_2 , reg_w=> reg_w_s ,enable_write=> reg_write_s ,   sel_reg_a=>  sel_reg_a ,   sel_reg_b=>sel_reg_b , sel_reg_w=> sel_reg_w , 
											clk=>clock , alu_second_result=>alu_result_2 , select_additional_register=>sel_additional_register_signal  );
		
		controller : Control_Unit port map(op_code=>op_code,clock=>clock , reset=>pc_reset,ALU_Src=> alu_src_s ,Mem_write=> mem_write_s ,Reg_write=> reg_write_s ,Reg_dst=> reg_dst_s ,ALU_op=> alu_op_s ,Mem_to_reg=> mem_to_reg_s ,Mem_read=> mem_read_s ,
									Branch=> branch_s , Jump => jump_signal , alu_count=>alu_count , 
									status => pc_go_next_signal_alu , dot_mux_sel=>dot_sel_control_signal , dot_read_enable=>dot_read_enable , dot_sel_result=> dot_sel_result, dot_write_enable=>dot_write_enable ,sel_additional_register => sel_additional_register_signal ) ;
		
		alu1 : alu port map(s=>	alu_control_line_s,clock=>clock,  A=>	alu_in_1,	B=>alu_in_2,cin=> '0' , r=>  alu_result_1 ,  sr=>alu_result_2  ,	reset=>pc_reset,
									shamt=>	instr_full(10 downto 6), cout=>  alu_out_m);
		
		mem_helper : mem_addr_helper port map(a=>alu_result_1,address=>address_to_memory );
		alu_control_unit : alu_control port map(ALU_op=>alu_op_s ,funct=> instr_full(5 downto 0) ,count=>alu_count , alu_control_input=>alu_control_line_s);
		
		--memory_unit : memory port map(clock , address_to_memory ,mem_write_s , read_data_2 , mem_read_s , read_data  );
		memory_unit : memory_block_module port map(clka=>clock , ena=> mem_read_s , wea=> mem_write_s , addra=> alu_result_1 , dina=>write_data_to_memory_unit, douta=>read_data );
		memory_mux : mux_mem port map(mem=>read_data , alu=> alu_result_1 ,mem_to_reg=> mem_to_reg_s , to_reg=>reg_w_s);
		alu_mux : mux_alu port map (read_data_2=> read_data_2 ,immediate=> immediate_extend , alu_src=>alu_src_s , alu_input_2=>alu_in_2 );
		write_data_mux_mem : dot_mux_module port map(sel=>dot_sel_control_signal , registers=>read_data_2 , dot=>dot_prod_result , dout=>write_data_to_memory_unit );

		dot_product_unit : dot_prod_module port map(clock=>clock , din=>reg_w_s , read_enable=>dot_read_enable ,sel_register=>sel_reg_b(2 downto 0) , sel_result =>dot_sel_result , write_enable=>dot_write_enable , result=>dot_prod_result ); 
		
		

		
end Behavioral;

