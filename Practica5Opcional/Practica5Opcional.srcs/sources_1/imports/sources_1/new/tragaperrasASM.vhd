----------------------------------------------------------------------------------
-- Company: UCM
-- Engineer: Mario Calvarro Marines
-- 
-- Create Date: 24.11.2022 18:17:10
-- Design Name: 
-- Module Name: tragaperrasASM - Behavioral
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

entity tragaperrasASM is
    port (
        rst: in  STD_LOGIC;
        clk: in  STD_LOGIC;        
        inicio: in  STD_LOGIC;
        fin: in  STD_LOGIC;
        opCodeleds: out STD_LOGIC_VECTOR (2 downto 0);
        ruleta01: out STD_LOGIC_VECTOR (3 downto 0);
        ruleta02: out STD_LOGIC_VECTOR (3 downto 0);
        creditos: out STD_LOGIC_VECTOR (3 downto 0)
    );
end tragaperrasASM;

architecture Behavioral of tragaperrasASM is

    signal control: std_logic_vector(7 downto 0);
    signal contador_display: std_logic;
    signal contador_5seg: std_logic;
    signal sin_creditos: std_logic;
    component controller
        port(
            rst: in std_logic;
            clk: in std_logic;
            init: in std_logic;
            fin: in std_logic;
            contador_display: in std_logic;
            contador_5seg: in std_logic;
            sin_creditos: in std_logic;
            control: out std_logic_vector(7 downto 0);
            control_leds: out std_logic_vector(2 downto 0)
        );
    end component;

    component data_path
        port(
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
    end component;

begin

    cont: controller port map(
        rst => rst,
        clk => clk,
        init => inicio,
        fin => fin,
        contador_display => contador_display,
        contador_5seg => contador_5seg,
        sin_creditos => sin_creditos,
        control => control,
        control_leds => opCodeleds
    );
    data: data_path port map(
        rst => rst,
        clk => clk,
        control => control,
        contador_display => contador_display,
        contador_5seg => contador_5seg, 
        sin_creditos => sin_creditos,
        display1 => ruleta01,
        display2 => ruleta02,
        display4 => creditos
    );

end Behavioral;
