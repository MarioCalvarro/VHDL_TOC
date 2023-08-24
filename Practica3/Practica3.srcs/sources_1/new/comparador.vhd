----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2022 17:36:57
-- Design Name: 
-- Module Name: comparador - Behavioral
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
use IEEE.NUMERIC_STD.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparador is
    generic(
        n: natural := 4
    );
    port (
        A : in std_logic_vector(n - 1 downto 0);
        B : in std_logic_vector(n - 1 downto 0);
        S : out std_logic_vector(n - 1 downto 0)
    );

end comparador;

architecture Behavioral of comparador is

    signal A_int, B_int : signed(n - 1 downto 0);

begin

    A_int <= signed(A);
    B_int <= signed(B);
    
    S <= A when A_int >= B_int else B;

end Behavioral;
