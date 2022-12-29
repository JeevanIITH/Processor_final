----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:07 12/26/2022 
-- Design Name: 
-- Module Name:    dot_mux_module - Behavioral 
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

---- mux for dot product unit it is used to store data into memory , eithers from main register or dot product register 


entity dot_mux_module is
    Port ( sel : in  STD_LOGIC;
           registers : in  STD_LOGIC_VECTOR (31 downto 0);
           dot : in  STD_LOGIC_VECTOR (31 downto 0);
           dout : out  STD_LOGIC_VECTOR (31 downto 0));
end dot_mux_module;

architecture Behavioral of dot_mux_module is

begin
	process(sel , dot , registers)
	begin 
		if(sel='0') then 
		    dout <= registers;
		else
			dout <= dot ;
		end if;
	end process;

end Behavioral;

