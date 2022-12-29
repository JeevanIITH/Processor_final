----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:35:35 12/22/2022 
-- Design Name: 
-- Module Name:    jump_mux - Behavioral 
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

--- mux for jump 

entity jump_mux is
    Port ( sel : in  STD_LOGIC;
           jump1 : in  STD_LOGIC_VECTOR (27 downto 0);
			  jump2 : in std_logic_vector (3 downto 0);
           pc_4_imm : in  STD_LOGIC_VECTOR (31 downto 0);
           pc_final : out  STD_LOGIC_VECTOR (31 downto 0));
end jump_mux;

architecture Behavioral of jump_mux is

begin
	process(sel , jump1 , jump2 , pc_4_imm)
	begin 
		if(sel='1') then 
			pc_final <= jump2 & jump1 ;
		else
			pc_final <= pc_4_imm;
		end if;
	end process;


end Behavioral;

