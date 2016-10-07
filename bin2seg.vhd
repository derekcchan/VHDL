----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Derek Chan
-- 
-- Create Date:   11:37:29 10/07/2016 
-- Design Name: 	Binary to Seven Segment Decoder
-- Module Name:   bin2seg - Behavioral 
-- Project Name: 
-- Target Devices: Spartan 3E Starter Board
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
use IEEE.STD_LOGIC_1164.all;

entity bin2seg is
	port (
		bin  : in STD_LOGIC_VECTOR(3 downto 0);
		seg7 : out STD_LOGIC_VECTOR(6 downto 0)
	);
end bin2seg;

architecture Behavioral of bin2seg is
begin
	process (bin)
begin
	case bin is 								 -- ABCDEFG 
		when "0000" => seg7 <= "1111110"; -- 0 
		when "0001" => seg7 <= "0110000"; -- 1
		when "0010" => seg7 <= "1101101"; -- 2
		when "0011" => seg7 <= "1111001"; -- 3
		when "0100" => seg7 <= "0110011"; -- 4
		when "0101" => seg7 <= "1011011"; -- 5
		when "0110" => seg7 <= "1011111"; -- 6
		when "0111" => seg7 <= "1110000"; -- 7
		when "1000" => seg7 <= "1111111"; -- 8
		when "1001" => seg7 <= "1111011"; -- 9
		when "1010" => seg7 <= "1110111"; -- A
		when "1011" => seg7 <= "0011111"; -- B
		when "1100" => seg7 <= "1001110"; -- C
		when "1101" => seg7 <= "0111101"; -- D
		when "1110" => seg7 <= "1001111"; -- E
		when "1111" => seg7 <= "1000111"; -- F
		when others => seg7 <= "0000000"; -- DEFAULT
	end case;
end process;
 
end Behavioral;