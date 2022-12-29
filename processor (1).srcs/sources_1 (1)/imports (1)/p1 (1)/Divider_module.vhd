----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:20:42 12/22/2022 
-- Design Name: 
-- Module Name:    Divider_module - Behavioral 
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

entity Divider_module is
    Port ( clock : in  STD_LOGIC;
           m : in  STD_LOGIC_VECTOR (31 downto 0);
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0);
           r : out  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
			  enable: in std_logic);
end Divider_module;

architecture Behavioral of Divider_module is
	component div1 is 
			port (			clock:in std_logic;
						d: in std_logic_vector(31 downto 0);
						m:in std_logic_vector(31 downto 0);
						q:out std_logic_vector(31 downto 0);
						r:out std_logic_vector(31 downto 0);
						reset : in std_logic;
						enable: in std_logic
					);
	end component;
	signal m_s , d_s , q_s , r_s : std_logic_vector(31 downto 0) ;
begin
		
		process(m,d)
		begin 
			if(m(31)='1') then 
				m_s <= not(m) +  "00000000000000000000000000000001" ;
			else 
				m_s <= m;
			end if;
			if(d(31)='1') then 
				d_s <= not(d) + "00000000000000000000000000000001" ;
			else 
				d_s <= d;
			end if;
		end process;
		process(q_s , r_s)
		begin 
			if( (m(31) xor d(31)) = '1' ) then 
				q <= not(q_s) + "00000000000000000000000000000001" ;
				r <= not(r_s) + "00000000000000000000000000000001" ;
			else
				q <= q_s;
				r <= r_s;
			end if;
		end process;
		
		
		
		divider : div1 port map(clock=>clock ,  d=>d_s , m=> m_s , q=>q_s , r=> r_s , reset=>reset , enable=>enable );
end Behavioral;

