----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2022 12:05:06
-- Design Name: 
-- Module Name: Adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder is
    Port ( x1 : in STD_LOGIC_VECTOR (63 downto 0);
           x2 : in STD_LOGIC_VECTOR (63 downto 0);
           x3 : in STD_LOGIC_VECTOR (63 downto 0);
           x4 : in STD_LOGIC_VECTOR (63 downto 0);
           result : out STD_LOGIC_VECTOR (63 downto 0);
           cout : out STD_LOGIC);
end Adder;

architecture Behavioral of Adder is

begin
    result <= std_logic_vector(signed(x1) + signed(x2) + signed(x3) + signed(x4)) ;

end Behavioral;
