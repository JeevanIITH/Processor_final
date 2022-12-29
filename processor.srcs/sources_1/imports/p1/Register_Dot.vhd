----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:15 12/26/2022 
-- Design Name: 
-- Module Name:    Register_Dot - Behavioral 
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
use std.textio.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


---- Register file for Dot product 

entity Register_Dot is
    generic(INIT_FILE : string := "registers_dot.txt");
    Port ( clock : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (31 downto 0);
           read_enable : in  STD_LOGIC;
           write_enable : in  STD_LOGIC;
           x1 : out  STD_LOGIC_VECTOR (31 downto 0);
           x2 : out  STD_LOGIC_VECTOR (31 downto 0);
           x3 : out  STD_LOGIC_VECTOR (31 downto 0);
           x4 : out  STD_LOGIC_VECTOR (31 downto 0);
           y1 : out  STD_LOGIC_VECTOR (31 downto 0);
           y2 : out  STD_LOGIC_VECTOR (31 downto 0);
           y3 : out  STD_LOGIC_VECTOR (31 downto 0);
           y4 : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0));
end Register_Dot;

architecture Behavioral of Register_Dot is
    type registerFile is array(0 to 7) of std_logic_vector(31 downto 0);
    ------------------------------------
  -- function to initialize memory content
    function init_memory_wfile(mif_file_name : in string) return registerFile is
    file mif_file : text open read_mode is mif_file_name;
    variable mif_line : line;
    variable temp_bv : bit_vector(31 downto 0);
    variable temp_mem : registerFile;
    begin
    for i in registerFile'range loop
        readline(mif_file, mif_line);
        read(mif_line, temp_bv);
        temp_mem(i) := to_stdlogicvector(temp_bv);
    end loop;
    return temp_mem;
    end function;
-------------------------------------
    signal registers : registerFile :=init_memory_wfile(INIT_FILE);
begin
        process(clock)
        begin 
            if rising_edge(clock) and write_enable='1' then
                registers(to_integer(unsigned(sel))) <= din;
            end if;
        end process;
        process(read_enable)
        begin
            if read_enable='1' then
                x1 <=registers(0);
                x2 <=registers(1);
                x3 <=registers(2);
                x4 <=registers(3);
                y1 <=registers(4);
                y2 <=registers(5);
                y3 <=registers(6);
                y4 <=registers(7);
            else
                x1 <= "00000000000000000000000000000000";
                x2 <= "00000000000000000000000000000000";
                x3 <= "00000000000000000000000000000000";
                x4 <= "00000000000000000000000000000000";
                y1 <= "00000000000000000000000000000000";
                y2 <= "00000000000000000000000000000000";
                y3 <= "00000000000000000000000000000000";
                y4 <= "00000000000000000000000000000000";
            end if;
        end process;

end Behavioral;

