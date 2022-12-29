----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:18 12/11/2022 
-- Design Name: 
-- Module Name:    Shift_right_module - Behavioral 
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

entity Shift_right_module is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           shamt : in  STD_LOGIC_VECTOR (4 downto 0);
           r : out  STD_LOGIC_VECTOR (31 downto 0));
end Shift_right_module;

architecture Behavioral of Shift_right_module is

begin
    process( enable, a , shamt )
    begin
        
        if enable='1' then
            r<=std_logic_vector(  unsigned(a) srl to_integer(unsigned(shamt)) );
        else
            r<="00000000000000000000000000000000";
        end if ;
        
    end process;
end Behavioral;

