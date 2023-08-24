----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2022 18:20:55
-- Design Name: 
-- Module Name: contador - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
    Port (
        rst: in std_logic;
        clk: in std_logic; 
        rst_uc: in std_logic;
        enable: in std_logic; 
        cont: in std_logic;
        cuenta: out std_logic_vector(3 downto 0)
    );
end contador;

architecture Behavioral of contador is

    signal cuenta_aux: std_logic_vector(3 downto 0);

begin

    cuenta <= cuenta_aux;

    CONTADOR: process(clk)
    begin
        if rising_edge(clk) then 
            if rst = '1' or rst_uc = '1' then 
                cuenta_aux <= "0000";
            elsif enable = '1' and cont = '1' then 
                if (cuenta_aux = "1001") then 
                    cuenta_aux <= "0000";
                else 
                    cuenta_aux <= std_logic_vector(unsigned(cuenta_aux) + 1);
                end if;
            end if;
        end if;
    end process CONTADOR;

end Behavioral;
