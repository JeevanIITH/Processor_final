 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:13 07/04/2022 
-- Design Name: 
-- Module Name:    div1 - Behavioral 
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
----------------------------------------------------------------------------------library IEEE;
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--performs m/d integer division 
-- q quotient  , r remainder , the remainder is store in additional register in register file 

entity div1 is

	port (			clock:in std_logic;
						d: in std_logic_vector(31 downto 0);        -- dividend
						m:in std_logic_vector(31 downto 0);         -- 
						q:out std_logic_vector(31 downto 0);
						r:out std_logic_vector(31 downto 0);
						reset : in std_logic;
						enable: in std_logic
					);
end div1;

architecture Behavioral of div1 is
	signal reg1:std_logic_vector(31 downto 0);
	signal reg2:std_logic_vector(31 downto 0);
	signal reg_q:std_logic_vector (31 downto 0);
	signal m_s:std_logic_vector (31 downto 0);

begin
	process(clock,m,d , enable,reset )
	
	variable i:integer;
	variable t:std_logic_vector(31 downto 0);   --- to hold current shifted 'M'
	
	begin
		if(reset='1') then 
			reg1<="00000000000000000000000000000000";               -- to store current subtracted result
			reg2<="00000000000000000000000000000000";
			reg_q<="00000000000000000000000000000000";              
			t:="00000000000000000000000000000000";
			i:=31;                                  -- to track downt the bit possition , it will reach until 31 from 0
		elsif(enable='1') then
                  if ( rising_edge(clock) )  then
                    
                            t:=(reg1(30 downto 0) & m(i));
                            if ( t >= d ) then
                                reg2<=t(31 downto 0)-d(31 downto 0);
                                reg_q<=reg_q(30 downto 0) & '1';
                                
                                i:=i-1;
                                
                
                                q<=reg_q(30 downto 0) & '1';
                                r<=t(31 downto 0)-d(31 downto 0);
                                    
                                
                            else
                                reg2<=t(31 downto 0)-"00000000000000000000000000000000";
                                reg_q<=reg_q(30 downto 0) & '0';
                                i:=i-1;
                                
                                
                                q<=reg_q(30 downto 0) & '0';
                                r<=t(31 downto 0);
                                
                                
                            end if;
                            if(i<0) then 
                                reg1<="00000000000000000000000000000000";
                                reg2<="00000000000000000000000000000000";
                                reg_q<="00000000000000000000000000000000";
                                t:="00000000000000000000000000000000";
                                i:=31;
                            end if;
                    
                    
                  end if;
                  
                  if(falling_edge(clock)) then 
                    reg1<=reg2;
                  end if;
        else 
            q<= "00000000000000000000000000000000";
            r<= "00000000000000000000000000000000";
		end if;
	end process;


end Behavioral;

