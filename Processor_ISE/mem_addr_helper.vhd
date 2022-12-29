----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:48 11/28/2022 
-- Design Name: 
-- Module Name:    mem_addr_helper - Behavioral 
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

entity mem_addr_helper is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           address : out  STD_LOGIC_VECTOR (11 downto 0));
end mem_addr_helper;

architecture Behavioral of mem_addr_helper is

begin
	address <= a(11 downto 0);


end Behavioral;

