----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:20:26 10/28/2022 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;



entity alu is
    Port ( s: in std_logic_vector( 3 downto 0) ;   -- select 
		   clock : in  STD_LOGIC;						-- clock 
           A : in  STD_LOGIC_VECTOR (31 downto 0);  -- input A 
           B : in  STD_LOGIC_VECTOR (31 downto 0);	-- input B
           cin : in  STD_LOGIC;							-- Cin
           r : out  STD_LOGIC_VECTOR (31 downto 0);  -- result 1
           sr : out  STD_LOGIC_VECTOR (31 downto 0); --second result 2
		   reset : in std_logic;
			shamt :in std_logic_vector(4 downto 0 );
			
           cout : out  STD_LOGIC);                 -- cout
end alu;

architecture Behavioral of alu is
	
	--counter module
	component counter_module is 
		Port ( clock : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		output_counter : out  STD_LOGIC_VECTOR (5 downto 0));
	end component;
	--Adder module
	component adder_32 is 
		Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
			  invert : in std_logic;
           cin : in  STD_LOGIC;
			  enable : in std_logic;
           sum : out  STD_LOGIC_VECTOR (31 downto 0);
           cout : out  STD_LOGIC);
	end component;
	
	--Multiplier
	component MUlT is 
    Port ( M : in  STD_LOGIC_VECTOR (31 downto 0);
           Q : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  enable : in std_logic;
           R : out  STD_LOGIC_VECTOR (31 downto 0));
	
	end component;
	
	
	--Diviser
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
	
	-- Signed divider
	 component Divider_module is
    Port ( clock : in  STD_LOGIC;
           m : in  STD_LOGIC_VECTOR (31 downto 0);
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0);
           r : out  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
			  enable: in std_logic);
	end component;
	
	component demux is
		Port ( sel : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
	end component ;
	
	--bitwise And
	component and_bit is 
	
		Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           R : out  STD_LOGIC_VECTOR (31 downto 0));
	
	end component;
	
	--bitwiseOr 
	component or_bit is 
	
		Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           r : out  STD_LOGIC_VECTOR (31 downto 0));
	
	end component;
	
	--bitwiseXOr 
	component xor_bit is 
	
		Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           r : out  STD_LOGIC_VECTOR (31 downto 0));
	
	end component;
	
	component shift_left_module is 
			Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           clock : in  STD_LOGIC;
		   enable : in std_logic;
           shamt : in  STD_LOGIC_VECTOR (4 downto 0);
           r : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component shift_right_module is 
			Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
			clock : in  STD_LOGIC;
			enable : in std_logic;
			shamt : in  STD_LOGIC_VECTOR (4 downto 0);
			r : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component set_less_module is 
			Port ( a : in  std_logic_vector(31 downto 0);
			b : in  std_logic_vector(31 downto 0);
			clock : in  STD_LOGIC;
			enable : in  STD_LOGIC;
			r : out  STD_LOGIC_vector(31 downto 0));
	end component ;
	

	-- this enable demux bus helps to enable and disable certain modules .
	component enable_demux_bus is 
	    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
			  e0 : out std_logic;
           e1 : out  STD_LOGIC;
           e2 : out  STD_LOGIC;
           e3 : out  STD_LOGIC;
           e4 : out  STD_LOGIC;
           e5 : out  STD_LOGIC;
           e6 : out  STD_LOGIC;
           e7 : out  STD_LOGIC;
           e8 : out  STD_LOGIC;
           e9 : out  STD_LOGIC;
           e10 : out  STD_LOGIC;
           e11 : out  STD_LOGIC;
           e12 : out  STD_LOGIC;
           e13 : out  STD_LOGIC;
           e14 : out  STD_LOGIC;
           e15 : out  STD_LOGIC);
	end component ;
	
	
	--signal declaration for alu module
	signal r_alu,sp_alu: std_logic_vector( 31 downto 0);
	signal cout_alu:std_logic;
	
	
	--signal for Adder 
	signal a_adder,b_adder,r_adder:std_logic_vector (31 downto 0);
	signal cin_adder:std_logic;
	
	--signal for multiplier
	signal clk_mult,str_mult :std_logic;
	signal a_mult,b_mult:std_logic_vector( 31 downto 0) ;
	signal r_mult,sr_mult:std_logic_vector ( 31 downto 0 ) ;
	
	--signal for diviser
	signal clk_div:std_logic;
	signal a_div,b_div,q_div,r_div:std_logic_vector( 31 downto 0) ;
	
	--signal for bitwise op
	signal a_and_bit,b_and_bit,r_and_bit :std_logic_vector (31 downto 0);
	signal a_or_bit,b_or_bit , r_or_bit :std_logic_vector (31 downto 0);
	signal a_xor_bit,b_xor_bit , r_xor_bit :std_logic_vector (31 downto 0);
	
	--signal for shift operations 
	signal r_shift_left,r_shift_right , r_set_less : std_logic_vector(31 downto 0);
	signal c : std_logic_vector(31 downto 0):="00000000000000000000000000000001";

	-- used for subtracion , like compute 2's complement
	signal invert : std_logic ;
	
	--enable signals 
	signal enable_add , enable_mul , enable_div ,enable_extra:  std_logic ;
	signal enable1, enable2 , enable3 , enable4 : std_logic;
	signal enable5, enable6 , enable7 , enable8 : std_logic;
	signal enable9, enable10 , enable11 , enable12 : std_logic;
	signal enable13, enable14 , enable15 , enable16 : std_logic;
	signal enable_bus : std_logic_vector(15 downto 0 ) ;
	signal reset_counter_signal  : std_logic;
	signal output_counter : std_logic_vector(5 downto 0); 
	
	
	signal flag_mult : std_logic;
begin

	Adder:adder_32 port map ( A, B ,invert , cin_adder ,enable3, r_adder , cout );
	Multiplier:MUlT port map ( A, B , clock , reset , enable15 , r_mult  );
	--Diviser : div1 port map( clock , B , A , q_div ,r_div,reset, enable16 );
	Divider : Divider_module port map(clock => clock , d=>B , m=> A , q=>q_div , r=>r_div , reset => reset , enable=> enable16);
	BitwiseAnd: and_bit port map ( A , B , r_and_bit );
	BitwiseOr : or_bit port map ( A , B , r_or_bit );
	BitwiseXor : xor_bit port map ( A, B , r_xor_bit );
	shift_left : shift_left_module port map(a=>B , clock => clock ,enable=>enable13,  shamt=> shamt , r=>r_shift_left );
	shift_right : shift_right_module port map(a=>B,clock =>clock, enable=>enable14 , shamt=>shamt, r=>r_shift_right);
	set_less_than : set_less_module port map(a=>A,b=>B,clock=>clock ,enable=>enable4,r=>r_set_less );

	enable_bus_module : enable_demux_bus port map(enable_bus,enable1,enable2 , enable3 , enable4 , enable5 , enable6 , enable7 , enable8 , enable9 , enable10 , enable11 , enable12 , enable13 , enable14 , enable15 , enable16);
	
	alu_select : demux port map(s,enable_bus);
	
	process( clock, s ,A ,B ,cin , r_and_bit , r_or_bit , r_xor_bit , r_adder ,r_mult, sr_mult ,q_div, r_div , r_shift_left , r_set_less , r_shift_right , q_div  ) 
	begin 
			
		case s is 
			--AND module
			when "0000" =>  r<=r_and_bit; sr<="00000000000000000000000000000000"; 
								
			
			--OR module 
			when "0001" =>  r<= r_or_bit;  sr<="00000000000000000000000000000000";
								
			--XOR module 
			when "0011" =>  r<=r_xor_bit;   sr<="00000000000000000000000000000000";
								
			--ADDER module
			when "0010" => invert <='0'; cin_adder <=cin   ; r<=r_adder ; sr<="00000000000000000000000000000000";
								
			-- Subtract
			when "0110" => invert <='1'; cin_adder <=cin  ; r<=r_adder ; sr<="00000000000000000000000000000000";
								
			

			--set less than 
			when "0111" => r<=r_set_less; sr<="00000000000000000000000000000000";
								






			--shift left operation 
			when "1100"=>   r<=r_shift_left; sr<="00000000000000000000000000000000";
								
			
			--shift right operation 
			when "1101"=>   r<=r_shift_right; sr<="00000000000000000000000000000000";
								
			
			--MULTIPLIER module
			when "1110" =>     r<=r_mult;          
							
							sr<="00000000000000000000000000000000";
			
			--DIVISER module
			when "1111" =>    r<=q_div; sr<=r_div ;
							
							
			       
			
			when others => r<="00000000000000000000000000000000";  sr<="00000000000000000000000000000000";
								
		end case;
		 
		
	end process;
	
	
	



end Behavioral;
