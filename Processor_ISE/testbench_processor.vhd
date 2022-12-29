--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:48:59 12/28/2022
-- Design Name:   
-- Module Name:   D:/vhdl_github_2/cop2/Processor_ISE/testbench_processor.vhd
-- Project Name:  Processor_ISE
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
 
ENTITY testbench_processor IS
END testbench_processor;
 
ARCHITECTURE behavior OF testbench_processor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT processor
    PORT(
         clock : IN  std_logic;
         pc_reset : IN  std_logic;
         alu_out_m : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal pc_reset : std_logic := '0';

 	--Outputs
   signal alu_out_m : std_logic;

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: processor PORT MAP (
          clock => clock,
          pc_reset => pc_reset,
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
		pc_reset<= '1';
		wait for 10 ns;
		pc_reset <= '0';
      wait for 1100 ns;	
      

      -- insert stimulus here 

      assert false report "ok" severity failure ;
   end process;

END;
