----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:25:07 10/28/2022 
-- Design Name: 
-- Module Name:    alu_control - Behavioral 
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




-- alu control module

-- the count port indicated that a operation took certain number of cycles .

entity alu_control is
    Port ( ALU_op : in  STD_LOGIC_VECTOR (1 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           count : out integer ;
           alu_control_input : out  STD_LOGIC_VECTOR (3 downto 0));
end alu_control;

architecture Behavioral of alu_control is

begin
    process(ALU_op , funct)
	 begin 
        if ALU_op="01" then
            alu_control_input <= "0110";            -- branch equal , perform subtract
            count <= 1;                             -- the beq operation takes 1 clock cycle
        end if ;

        if ALU_op ="00" then
            alu_control_input <= "0010";            -- load word store word , add immediate -- perform addition
            count <= 1;
        end if ;

        if (ALU_op = "10") then 
            case( funct ) is
            
                when "100000" =>
                    -- add signal
                    alu_control_input <="0010";
                    count <= 1;
                when "100010" =>
                    --subtract
                    alu_control_input <="0110";
                    count <= 1;
                when "100100" =>
                    --AND
                    alu_control_input <="0000";
                    count <= 1;
                when "100101" =>
                    --OR
                    alu_control_input <="0001";
                    count <= 1;
                when "101010" =>
                    --set on less than
                    alu_control_input <="0111";
                    count <= 1;

                ---------------------------    
                when "011000" =>
                    --multiplier
                    alu_control_input <="1110";
                    count <= 32;
                when "011010" =>
                    --divider
                    alu_control_input <="1111";
                    count <= 32;
                
                when "111100" =>
                -- xor
                    alu_control_input <= "0011";
                    count <= 1;
                when "000000" =>
                    --shift left operation 
                    alu_control_input <= "1100";
                    count <= 1;
                when "000010" =>
                    --shift right operation
                    alu_control_input <= "1101";
                    count <= 1;
                when others => 
                    --others 
                    alu_control_input <="1101";
                    count <= 1;
                
            
            end case ;
        end if;
        
        if ALU_op = "11" then
            alu_control_input <= "1100";
            count <= 2;
        end if ;
        
    end process;


end Behavioral;

