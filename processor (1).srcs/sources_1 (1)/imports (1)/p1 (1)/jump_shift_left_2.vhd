----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:42:21 12/21/2022 
-- Design Name: 
-- Module Name:    jump_shift_left_2 - Behavioral 
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

entity jump_shift_left_2 is
    Port ( a : in  STD_LOGIC_VECTOR (25 downto 0);
           b : out  STD_LOGIC_VECTOR (27 downto 0));
end jump_shift_left_2;

architecture Behavioral of jump_shift_left_2 is

begin
	b<= a(25 downto 0) & "00" ;


end Behavioral;

