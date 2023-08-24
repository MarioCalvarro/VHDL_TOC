----------------------------------------------------------------------------------
-- Company: UCM
-- Engineer: Mario Calvarro Marines
-- 
-- Create Date: 24.11.2022 18:17:10
-- Design Name: 
-- Module Name: data_path - Behavioral
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

entity data_path is
    port ( 
        rst: in std_logic;
        clk: in std_logic;
        control: in std_logic_vector(7 downto 0);
        contador_display: out std_logic;
        contador_5seg: out std_logic;
        sin_creditos: out std_logic;
        display1: out std_logic_vector(3 downto 0);
        display2: out std_logic_vector(3 downto 0);
        display4: out std_logic_vector(3 downto 0)
    );
end data_path;

architecture Behavioral of data_path is

    alias reset_con1: std_logic is control(0);
    alias reset_con2: std_logic is control(1);
    alias reset_con_longo: std_logic is control(2);
    alias enable_con1: std_logic is control(3);
    alias enable_con2: std_logic is control(4);
    alias enable_con_longo: std_logic is control(5);
    alias control_creditos: std_logic_vector is control(7 downto 6);

    signal cuenta_medio_segundo, cuenta_display1, cuenta_display2: std_logic;
    component divisor 
        port (     
            rst: in STD_LOGIC;
            clk: in STD_LOGIC; -- reloj de entrada de la entity superior
            cuenta_medio_segundo: out STD_LOGIC;
            cuenta_display1: out STD_LOGIC;
            cuenta_display2: out STD_LOGIC
        );
    end component;

    signal cuenta1, cuenta2, cuenta_longo: std_logic_vector(3 downto 0);
    component contador
        port (
            rst: in std_logic;
            clk: in std_logic; 
            rst_uc: in std_logic;
            enable: in std_logic; 
            cont: in std_logic;
            cuenta: out std_logic_vector(3 downto 0)
        );
    end component;

    signal credit_restantes: std_logic_vector(3 downto 0); 
    component contador_creditos 
        port (
            rst: in std_logic;
            clk: in std_logic;
            control_creditos: in std_logic_vector(1 downto 0);
            credit_restantes: out std_logic_vector(3 downto 0)
        );
    end component;

begin

    divide: divisor port map(
        rst => rst,
        clk => clk,
        cuenta_medio_segundo => cuenta_medio_segundo,
        cuenta_display1 => cuenta_display1,
        cuenta_display2 => cuenta_display2
    );

    contador_1: contador port map(
        rst => rst,
        clk => clk,
        rst_uc => reset_con1,
        enable => enable_con1, 
        cont => cuenta_display1,
        cuenta => cuenta1 
    );

    contador_2: contador port map(
        rst => rst,
        clk => clk,
        rst_uc => reset_con2,
        enable => enable_con2, 
        cont => cuenta_display2,
        cuenta => cuenta2 
    );

    contador_longo: contador port map(
        rst => rst,
        clk => clk,
        rst_uc => reset_con_longo,
        enable => enable_con_longo, 
        cont => cuenta_medio_segundo,
        cuenta => cuenta_longo
    );

    maquina_creditos: contador_creditos port map(
        rst => rst,
        clk => clk, 
        control_creditos => control_creditos, 
        credit_restantes => credit_restantes
    );

    contador_display <= '1' when cuenta1 = cuenta2 else '0';

    contador_5seg <= '1' when cuenta_longo = "1001" else '0';

    sin_creditos <= '1' when credit_restantes = "0000" else '0';

    display1 <= cuenta1;
    display2 <= cuenta2;
    display4 <= credit_restantes;

end Behavioral;
