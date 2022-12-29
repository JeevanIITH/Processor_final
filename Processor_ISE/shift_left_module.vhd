----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:24 12/04/2022 
-- Design Name: 
-- Module Name:    shift_left_module - Behavioral 
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

entity shift_left_module is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           clock : in  STD_LOGIC;
           enable : in std_logic;
           shamt : in  STD_LOGIC_VECTOR (4 downto 0);
           r : out  STD_LOGIC_VECTOR (31 downto 0));
end shift_left_module;

architecture Behavioral of shift_left_module is

begin
    process( enable , shamt , a)   --,  enable , a , shamt
    begin
        if (  enable='1' ) then 
    
	        r <=std_logic_vector(  unsigned(a) sll to_integer(unsigned(shamt)) );
	        --std_logic_vector(unsigned(Din) sll 2);
        else
            r<="00000000000000000000000000000000";
        end if;
        
    end process;
end Behavioral;

