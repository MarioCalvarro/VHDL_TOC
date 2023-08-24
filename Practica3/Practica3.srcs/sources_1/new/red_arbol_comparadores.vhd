----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2022 19:25:38
-- Design Name: 
-- Module Name: red_arbol_comparadores - Behavioral
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



entity red_arbol_comparadores is

    generic (
        num_bits : natural := 4;
        num_entradas : natural := 4
    );
    port ( 
        X : in std_logic_vector(num_entradas * num_bits - 1 downto 0);
        S : out std_logic_vector(num_bits - 1 downto 0)
    );

end red_arbol_comparadores;

architecture Behavioral of red_arbol_comparadores is

    -- Input must be power of 2
    function Log2 (input : integer) return integer is 
    
        variable temp, log: integer;
    
    begin
    
        temp := input;
        log := 0;
    
        while (temp > 1) loop 
            temp := temp / 2;
            log := log + 1;
        end loop;
    
        return log;
    
    end function Log2;
    
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

    type C_type is array (Log2(num_entradas) downto 0, num_entradas - 1 downto 0) of std_logic_vector(num_bits - 1 downto 0);

    signal c : C_type;

begin

    gen_entradas: for i in 0 to num_entradas - 1 generate
        c(0, i) <= X(num_bits * i + num_bits - 1 downto num_bits * i);
    end generate gen_entradas;

    gen_niveles: for i in 0 to Log2(num_entradas) - 1 generate
        gen_comparadores: for j in 0 to (num_entradas / 2**(i+1)) - 1 generate
            comparador_i_j: comparador
                generic map(
                    n => num_bits
                )
                port map(
                    A => c(i, 2 * j),
                    B => c(i, 2 * j + 1),
                    S => c(i + 1, j)
                );
        end generate gen_comparadores;
    end generate gen_niveles;

    S <= C(Log2(num_entradas), 0); 

end Behavioral;
