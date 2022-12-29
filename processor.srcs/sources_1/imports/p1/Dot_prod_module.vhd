----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2022 12:08:31
-- Design Name: 
-- Module Name: Dot_prod_module - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Dot_prod_module is
    Port ( clock : in STD_LOGIC;
           din : in std_logic_vector(31 downto 0 );
           read_enable : in std_logic;
           sel_register : in std_logic_vector(2 downto 0);
           sel_result : in std_logic; 
           write_enable : in std_logic;
           result : out STD_LOGIC_VECTOR (31 downto 0));
end Dot_prod_module;

architecture Behavioral of Dot_prod_module is
    
    component Register_Dot is 
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
        sel : in  STD_LOGIC_VECTOR (2 downto 0)
         );
    end component;

    component Adder is 
            Port ( x1 : in STD_LOGIC_VECTOR (63 downto 0);
           x2 : in STD_LOGIC_VECTOR (63 downto 0);
           x3 : in STD_LOGIC_VECTOR (63 downto 0);
           x4 : in STD_LOGIC_VECTOR (63 downto 0);
           result : out STD_LOGIC_VECTOR (63 downto 0);
           cout : out STD_LOGIC);
    end component;
    component multiplier is 
            Port ( a : in STD_LOGIC_VECTOR (31 downto 0);
           b : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (63 downto 0);
           clock : in STD_LOGIC);
    end component ;
    signal x1 , x2 , x3 , x4 , y1 , y2 , y3 , y4 : std_logic_vector(31 downto 0) ;
    signal result1 , result2 , result3 , result4 : std_logic_vector(63 downto 0) ;
    signal cout_reg : std_logic;
    signal final_result1 ,final_result2 : std_logic_vector(31 downto 0);
begin
    Register_file : Register_Dot port map(clock=> clock , din=>din  , read_enable=> read_enable , write_enable=>write_enable , x1=>x1 , 
                                        x2=>x2 , x3=>x3 , x4=> x4 , y1=>y1 , y2=> y2 , y3=> y3 , y4=> y4 , sel=> sel_register ); 
    mult1 : multiplier port map(a=>x1,b=>y1 ,result=> result1, clock=>clock );
    mult2 : multiplier port map(a=>x2,b=>y2 , result=>result2 , clock=>clock) ;
    mult3 : multiplier port map(a=>x3,b=>y3 , result=>result3 , clock=>clock);
    mult4 : multiplier port map(a=>x4,b=>y4, result=>result4 , clock=>clock );
    Acc : Adder port map(x1=>result1,x2=>result2 , x3=>result3 , x4=>result4 , result(31 downto 0)=>final_result1, result(63 downto 32)=> final_result2 , cout=>cout_reg);
    
    process(sel_result , final_result1 , final_result2 )
    begin 
        if sel_result = '1' then
            result <= final_result2;
        else
            result <= final_result1;
        end if ;
    end process;
end Behavioral;
