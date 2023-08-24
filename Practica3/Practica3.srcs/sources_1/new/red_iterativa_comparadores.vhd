----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2022 17:31:20
-- Design Name: 
-- Module Name: red_iterativa_comparadores - Behavioral
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

entity red_iterativa_comparadores is

    generic (
        num_bits : natural := 4;
        num_entradas : natural := 4
    );
    port ( 
        X : in std_logic_vector (num_entradas * num_bits - 1 downto 0);
        S : out std_logic_vector (num_bits - 1 downto 0)
    );

end red_iterativa_comparadores;

architecture Behavioral of red_iterativa_comparadores is

    type C_type is array (num_entradas - 1 downto 0) of std_logic_vector(num_bits - 1 downto 0);

    signal c: C_type;

    component comparador
        generic(
            n: natural := 4
        );
        port(
            A : in std_logic_vector(n - 1 downto 0);
            B : in std_logic_vector(n - 1 downto 0);
            S : out std_logic_vector(n - 1 downto 0)
        );
    end component;

begin

    c(0) <= X(num_bits - 1 downto 0);

    gen1: for i in 1 to num_entradas - 1 generate
        comparador_i: comparador 
        generic map (
            n => num_bits
        )
        port map(
            X(num_bits * i + num_bits - 1 downto num_bits * i),
            c(i-1),
            c(i)
        );
    end generate gen1;

    S <= c(num_entradas - 1);

end Behavioral;
