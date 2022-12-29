----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:15 10/18/2022 
-- Design Name: 
-- Module Name:    Control_Unit - Behavioral 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;




-- if load word or store word then ALU op <= Add instruction .

entity Control_Unit is
	Port ( 
				op_code : in std_logic_vector ( 5 downto 0 ) ;
				clock : in std_logic ; 
				reset : in std_logic;
				ALU_Src : out std_logic;
				Mem_write :out std_logic_vector(3 downto 0);
				Reg_write :out std_logic;
				Reg_dst :out std_logic;
				ALU_op : out std_logic_vector( 1 downto 0 ) ;
				Mem_to_reg : out std_logic;
				Mem_read : out std_logic;
				Branch : out std_logic;
				Jump :out std_logic ;
				alu_count : in integer;
				status : out std_logic;
				dot_mux_sel: out std_logic;
				dot_read_enable : out std_logic;
				dot_sel_result : out std_logic;
				dot_write_enable : out std_logic;
				sel_additional_register : out std_logic
				);
end Control_Unit;

architecture Behavioral of Control_Unit is
	component counter_module is 
		Port ( clock : in  STD_LOGIC;
			reset : in  STD_LOGIC;
			output_counter : out  STD_LOGIC_VECTOR (5 downto 0));
	end component;
	signal reset_counter_signal : std_logic;
	signal output_counter_signal : std_logic_vector(5 downto 0);
	signal combine_reset_counter : std_logic;
	
begin
	counter : counter_module port map(clock=>clock , reset=>combine_reset_counter , output_counter=>output_counter_signal );
    combine_reset_counter <= reset_counter_signal or reset ;
	process( clock ,alu_count )
		begin 
			 
			--if(rising_edge(clock)) then
				 
				case Op_code is
					when "000000" =>
					-- depends on function code 
						ALU_op<="10";
						Reg_dst<='1';
						ALU_Src<='0';
						if  to_integer(unsigned(output_counter_signal))=alu_count then
							Reg_write<='1';
							reset_counter_signal <= '1';
							status <= '1';
						else
							Reg_write<='0';
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;
						
						Mem_write<="0000";
						Mem_read<='0';
						Mem_to_reg<='0';
						Branch <= '0';
						Jump <='0';
						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '0';
					when "100011" =>
					-- load word
						Reg_dst <='0';
						ALU_Src <='1';
						Mem_to_reg <='1';
						Reg_write <='1';
						Mem_read<='1';
						Mem_write <= "0000";
						Branch <= '0';
						ALU_op <= "00";
						Jump <='0';
						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						
						if to_integer(unsigned(output_counter_signal))=alu_count then
							
							reset_counter_signal <= '1';
							status <= '1';
						else
							
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;
						sel_additional_register <= '0';	
					when "101011" =>
					-- store word 
						
						ALU_Src <='1';
						Reg_dst <='0';
						Reg_write <='0';
						Mem_read<='1';
						Mem_write <= "1111";
						Mem_to_reg<='0';
						Branch <= '0';
						ALU_op <= "00";
						Jump <='0';

						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '0';

						if to_integer(unsigned(output_counter_signal))=alu_count then
							
							reset_counter_signal <= '1';
							status <= '1';
						else
							
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;
					when "010000" =>
					-- store mfhi register to memory 
						ALU_Src <='1';
						Reg_dst <='0';
						Reg_write <='0';
						Mem_read<='1';
						Mem_write <= "1111";
						Mem_to_reg<='0';
						Branch <= '0';
						ALU_op <= "00";
						Jump <='0';

						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '1';

						if to_integer(unsigned(output_counter_signal))=alu_count then
							
							reset_counter_signal <= '1';
							status <= '1';
						else
							
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;
					-------------------------------------
					----- I type instructions ------------------
					when "001000" =>
					-- add imm
						Reg_dst <= '0';
						ALU_Src <= '1';
						Mem_to_reg <= '0';
						if  to_integer(unsigned(output_counter_signal))=alu_count then
							Reg_write<='1';
							reset_counter_signal <= '1';
							status <= '1';
						else
							Reg_write<='0';
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;
						Mem_read <= '0';
						Mem_write <= "0000";
						Branch <='0';
						ALU_op <= "00";
						Jump <='0';

						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '0';
					-------branch instruction -----------------------

					when "000100"=>
						--branch equal go to immediate 
						Branch     <=  '1';
						Reg_dst    <=  '0';
						ALU_Src    <=  '0';
						Reg_write  <=  '0';
						Mem_read   <=  '0';
						Mem_write  <=  "0000";
						ALU_op     <=  "01";
						Mem_to_reg <= '0';
						Jump <='0';

						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '0';

						if to_integer(unsigned(output_counter_signal))=alu_count then
							
							reset_counter_signal <= '1';
							status <= '1';
						else
							
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;
					---comparision instruction
					-- when "001010" =>
					-- --set less than imm
					
					-- when "001011" =>
					-- --set less than imm unsigned
					
					 --when "001100" =>
					-- -- AND imm
						--Branch <= '0';
						
					
					-- when "001101" =>
					-- -- OR imm 
					
					-- when "001110" =>
					--XOR immediate
					

					-------------------------------------------
					----- jump instrucions --------------------
					when "000010" =>
						ALU_op<="00";
						Reg_dst<='0';
						ALU_Src<='0';
						Reg_write<='0';
						Mem_write<="0000";
						Mem_read<='0';
						Mem_to_reg<='0';
						Branch <= '0';
						Jump <='1';
						
						reset_counter_signal <= '1';
						status <= '1';

						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '0';
					when "111100" =>
						ALU_op<="00";
						Reg_dst<='0';
						ALU_Src<='1';
						Reg_write<='0';
						Mem_write<="0000";
						Mem_read<='1';
						Mem_to_reg<='1';
						Branch <= '0';
						Jump <='0';
						if to_integer(unsigned(output_counter_signal))=alu_count then
							
							reset_counter_signal <= '1';
							status <= '1';
						else
							
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;

						dot_mux_sel<= '1';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '1';
						sel_additional_register <= '0';

					when "111101" =>
						ALU_op<="00";
						Reg_dst<='0';
						ALU_Src<='1';
						Reg_write<='0';
						Mem_write<="1111";
						Mem_read<='1';
						Mem_to_reg<='0';
						Branch <= '0';
						Jump <='0';

						if to_integer(unsigned(output_counter_signal))=alu_count then
							
							reset_counter_signal <= '1';
							status <= '1';
						else
							
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;

						dot_mux_sel<= '1';
						dot_read_enable <= '1';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '0';

					when "111110" =>
						ALU_op<="00";
						Reg_dst<='0';
						ALU_Src<='1';
						Reg_write<='0';
						Mem_write<="1111";
						Mem_read<='1';
						Mem_to_reg<='0';
						Branch <= '0';
						Jump <='0';

						if to_integer(unsigned(output_counter_signal))=alu_count then
							
							reset_counter_signal <= '1';
							status <= '1';
						else
							
							reset_counter_signal <= '0' ;
							status <= '0';
						end if ;

						dot_mux_sel<= '1';
						dot_read_enable <= '1';
						dot_sel_result <= '1';
						dot_write_enable <= '0';

					



					when others =>
						ALU_op<="00";
						Reg_dst<='0';
						ALU_Src<='0';
						Reg_write<='0';
						Mem_write<="0000";
						Mem_read<='0';
						Mem_to_reg<='0';
						Branch <= '0';
						Jump <='0';
						status <='1';
						reset_counter_signal <= '1';
							
						dot_mux_sel<= '0';
						dot_read_enable <= '0';
						dot_sel_result <= '0';
						dot_write_enable <= '0';
						sel_additional_register <= '0';


				end case;
		
		
		
			--end if;
		end process;


end Behavioral;

