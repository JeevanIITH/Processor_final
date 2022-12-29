----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:06:09 11/16/2022 
-- Design Name: 
-- Module Name:    pc_main - Behavioral 
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

entity pc_main is
    Port ( pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
				clock : in std_logic ;
				reset: in std_logic ;
				pc_write : in std_logic ;
				pc_enable : in std_logic;
           pc_out : out  STD_LOGIC_VECTOR (31 downto 0));
end pc_main;

architecture Behavioral of pc_main is

	signal pc_next_register : std_logic_vector(31 downto 0 ) ;
	signal pc_curr_register : std_logic_vector(31 downto 0);

begin

	process(clock , pc_enable , pc_write  )   --, pc_in ,reset , pc_write
		begin 
		-- if(reset ='0' and pc_write='0' and pc_enable='0' ) then 
		-- 	pc_out<=pc_register;
		-- end if;
		if(reset='1') then 
			pc_next_register <="00000000000000000000000000000000";
			pc_curr_register <="00000000000000000000000000000000";
			pc_out<="00000000000000000000000000000000";
		else
			if  pc_write='1' then
				pc_next_register <= pc_in;
			end if ;
			if rising_edge(clock) and  pc_enable='1' then
				pc_curr_register <= pc_in;
			end if ;
			pc_out <= pc_curr_register;
			-- if( pc_write='1') then
			-- 	pc_register <= pc_in;
			-- 	pc_curr_register <= pc_in;
			-- else
			-- 	pc_curr_register <= pc_curr_register;
			-- 	pc_register <= pc_register ;
			-- end if;

			-- if (  clock='1' and pc_enable='1' ) then 
			-- 		pc_out<=pc_register;
			-- 		pc_curr_register <= pc_register;
			-- else
			-- 	pc_out <= pc_curr_register ;	
			-- end if;

		end if;
	
		
	
	end process;


	


end Behavioral;

