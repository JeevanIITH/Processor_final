----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:54:47 11/16/2022 
-- Design Name: 
-- Module Name:    zero_m - Behavioral 
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

entity zero_m is
    Port ( r : in  STD_LOGIC_VECTOR (31 downto 0);
			
			--top: out std_logic;
           zero : out  STD_LOGIC);
end zero_m;

architecture Behavioral of zero_m is

begin
	zero <= not ( r(31) and 
					  r(30) and
					  r(29) and 
					  r(28) and 
					  r(27) and 
					  r(26) and 
					  r(25) and 
					  r(24) and 
					  r(23) and 
					  r(22) and 
					  r(21) and 
					  r(20) and
					  r(19) and 
					  r(18) and 
					  r(17) and 
					  r(16) and 
					  r(15) and
					  r(14) and 
					  r(13) and 
					  r(12) and 
					  r(11) and 
					  r(10) and
					  r(9) and
					  r(8) and
					  r(7) and
					  r(6) and
					  r(5) and 
					  r(4) and 
					  r(3) and
					  r(2) and 
					  r(1) and 
					  r(0)    );


end Behavioral;

