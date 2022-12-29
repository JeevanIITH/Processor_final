----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:52 11/28/2022 
-- Design Name: 
-- Module Name:    pc_main_helper - Behavioral 
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


---- since the instruction block address is not 32 bit , we use helper

entity pc_main_helper is
    Port ( pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
            to_adder : out std_logic_vector(31 downto 0 );
           to_memory : out  STD_LOGIC_VECTOR (8 downto 0)
           );
end pc_main_helper;

architecture Behavioral of pc_main_helper is

begin
	to_memory<=pc_in(8 downto 0);
    to_adder<=pc_in;
	

end Behavioral;

