--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:55:43 12/05/2022
-- Design Name:   
-- Module Name:   D:/vhdl_github_2/vhdl_github_2/p2/p1/Test_p1_2.vhd
-- Project Name:  p1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: processor
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_p1_2 IS
END Test_p1_2;
 
ARCHITECTURE behavior OF Test_p1_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT processor
    PORT(
         clock : IN  std_logic;
         --alu_in_m : IN  std_logic;
         --reg_reset : IN  std_logic;
         pc_reset : IN  std_logic;
         --pc_enable : IN  std_logic;
         --pc_write_signal : IN  std_logic;
         
         --alu_immediate_signal : OUT  std_logic_vector(31 downto 0);
         alu_out_m : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   
   
   signal pc_reset : std_logic := '0';
   
   

 	--Outputs
   
   --signal alu_immediate_signal : std_logic_vector(31 downto 0);
   signal alu_out_m : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: processor PORT MAP (
          clock => clock,
          --alu_in_m => alu_in_m,
          --reg_reset => reg_reset,
          pc_reset => pc_reset,
          --pc_enable => pc_enable,
          --pc_write_signal => pc_write_signal,
         
          --alu_immediate_signal => alu_immediate_signal,
          alu_out_m => alu_out_m
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 10 ns;	
		pc_reset<='1';
		
      wait for 10 ns ;
		pc_reset<='0';
		wait for 10 ns;
		wait for 1200 ns;
		--wait for 390 ns;
		--wait for 320 ns;
		--wait for 330 ns ;
		--wait for 10 ns;
		--wait for 10 ns;
		--wait for 330 ns;
		--wait for 10 ns;
		--wait for 20 ns;
		--wait for 320 ns ;     -- please check div operation 33 cycles
		--wait for 10 ns;
		--wait for 300 ns ; 
		--wait for 30 ns ;
		--wait for 300 ns ;
		
      -- insert stimulus here 
		assert false report "ok" severity failure ;
      wait;
   end process;

END;
