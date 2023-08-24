----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2022 09:43:42
-- Design Name: 
-- Module Name: contador_creditos - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador_creditos is
    Port (
        rst : in STD_LOGIC;
        clk : in STD_LOGIC;
        control_creditos : in STD_LOGIC_VECTOR(1 downto 0);
        credit_restantes : out STD_LOGIC_VECTOR(3 downto 0)
    );
end contador_creditos;

architecture Behavioral of contador_creditos is

    signal credits: std_logic_vector(3 downto 0);

begin

    credit_restantes <= credits;

    CREDITS_SYNC: process(clk)
    begin 
        if rising_edge(clk) then 
            if rst = '1' then 
                credits <= "0101";
            elsif control_creditos = "01" then 
                credits <= std_logic_vector(unsigned(credits) - 1);
            elsif control_creditos = "10" then 
                if (unsigned(credits) < 12) then 
                    credits <= std_logic_vector(unsigned(credits) + 3);
                else 
                    credits <= "1111";
                end if;
            end if;
        end if;
    end process CREDITS_SYNC;

end Behavioral;
