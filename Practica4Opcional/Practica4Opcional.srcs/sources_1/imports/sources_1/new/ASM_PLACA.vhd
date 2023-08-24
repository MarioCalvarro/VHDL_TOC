----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2022 10:26:42
-- Design Name: 
-- Module Name: ASM_PLACA - Behavioral
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

entity ASM_PLACA is
    port(
        rst, clk, inicio: in STD_LOGIC;   
        A, B: in STD_LOGIC_VECTOR(3 downto 0);
        display: out STD_LOGIC_VECTOR(6 downto 0);
        display_enable: out STD_LOGIC_VECTOR(3 downto 0);
        fin, cambio: out STD_LOGIC
    );
end ASM_PLACA;

architecture Behavioral of ASM_PLACA is

    component debouncer
        port(
            rst: IN STD_LOGIC;
            clk: IN STD_LOGIC;
            x: IN STD_LOGIC;
            xDeb: OUT STD_LOGIC;
            xDebFallingEdge: OUT STD_LOGIC;
            xDebRisingEdge: OUT STD_LOGIC
        );
    end component debouncer;

    component multiplicadorASM 
        port(
            rst : in STD_LOGIC;
            clk : in STD_LOGIC;
            inicio : in STD_LOGIC;
            A : in STD_LOGIC_VECTOR(3 downto 0);
            B : in STD_LOGIC_VECTOR(3 downto 0);
            R : out STD_LOGIC_VECTOR(7 downto 0);
            fin, cambio : out STD_LOGIC
        );
    end component multiplicadorASM;

    component displays 
        port(
            rst, clk: in STD_LOGIC;
            digito_0, digito_1, digito_2, digito_3: in STD_LOGIC_VECTOR(3 downto 0);
            display: out STD_LOGIC_VECTOR(6 downto 0);
            display_enable: out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component displays;

    signal init : STD_LOGIC;
    signal R : STD_LOGIC_VECTOR(7 downto 0);

begin

    debouncer_a : debouncer port map(rst, clk, inicio, open, init, open);
    multiplicadorASM_a : multiplicadorASM port map(rst, clk, init, A, B, R, fin, cambio);
    displays_a : displays port map(rst, clk, R(3 downto 0), R(7 downto 4), "0000", "0000", display, display_enable);

end Behavioral;
