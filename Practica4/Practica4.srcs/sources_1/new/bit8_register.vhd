----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2022 09:43:28
-- Design Name: 
-- Module Name: bit8_register - Behavioral
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

entity bit8_register is
    port (
        clk, reset, load : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : out STD_LOGIC_VECTOR(7 downto 0)
    );
end bit8_register;

architecture Behavioral of bit8_register is

begin

    SYNC_STATE: process(clk, reset)
    begin 
        if (rising_edge(clk)) then 
            if reset = '1' then 
                B <= (others => '0');
            elsif load = '1' then 
                B <= A;
            end if;
        end if;
    end process SYNC_STATE;

end Behavioral;
