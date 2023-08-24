----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2022 07:08:10
-- Design Name: 
-- Module Name: contador16 - Behavioral
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

entity contador16 is
    Port ( 
        rst: IN std_logic;
        clk: IN std_logic;
        cuenta: IN std_logic;
        salida: OUT std_logic_vector(3 downto 0)
    );
end contador16;

architecture Behavioral of contador16 is

    component sumador
        port (
            A: IN std_logic_vector(3 downto 0); 
            B: IN std_logic_vector(3 downto 0);
            C: OUT std_logic_vector(3 downto 0)
        );
    end component;
    
    component registro 
        port (
            rst: IN std_logic;
            clk: IN std_logic;
            load: IN std_logic;
            E: IN std_logic_vector(3 downto 0);
            S: OUT std_logic_vector(3 downto 0)
        );
    end component;
  
    component divisor 
        port (
            rst: IN std_logic;
            clk_entrada: IN std_logic;
            clk_salida: OUT std_logic
        );
    end component;
    
    signal salida_sumador, salida_registro: std_logic_vector (3 downto 0);
    signal clk_salida_c: std_logic;

begin

    mod_sumador: sumador port map(
        "0001",
        salida_registro,
        salida_sumador
    );
    
    mod_registro: registro port map(
        rst,
        clk_salida_c,
        cuenta,
        salida_sumador,
        salida_registro
    );
    
    mod_divisor: divisor port map(
        rst,
        clk,
        clk_salida_c
    );
    
    salida <= salida_registro;

end Behavioral;
