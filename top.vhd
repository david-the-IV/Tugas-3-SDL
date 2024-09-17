----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:53:36 09/11/2024 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port ( Switch0 : in  STD_LOGIC;
           Switch1 : in  STD_LOGIC;
           Switch2 : in  STD_LOGIC;
           Switch3 : in  STD_LOGIC;
           PushButton : in  STD_LOGIC;
           LEDs : out  STD_LOGIC_VECTOR (1 downto 0));
end top;

architecture Behavioral of top is

begin
	LEDs(0)<=Switch0 and not Switch1;
	LEDs(1)<=(Switch2 or Switch3) and PushButton;
end Behavioral;
