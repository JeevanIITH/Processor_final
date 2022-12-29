----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:13:06 12/12/2022 
-- Design Name: 
-- Module Name:    set_less_module - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity set_less_module is
    Port ( a : in  std_logic_vector(31 downto 0);
           b : in  std_logic_vector(31 downto 0);
           clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           r : out  STD_LOGIC_VECTOR(31 downto 0));
end set_less_module;

architecture Behavioral of set_less_module is

begin
	process(clock,enable,a,b)
		begin
		if(enable='1') then 
			if( signed(a)<signed(b)) then 
				r<="00000000000000000000000000000001";
			else
				r<="00000000000000000000000000000000";
			end if;
		end if;
	end process;
end Behavioral;

