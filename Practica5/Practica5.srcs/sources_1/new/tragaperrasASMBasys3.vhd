----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2022 18:17:10
-- Design Name: 
-- Module Name: tragaperrasASMBasys3 - Behavioral
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

entity tragaperrasASMBasys3 is
    Port ( 
        rst: in std_logic;
        clk: in std_logic;
        inicio: in std_logic;
        fin: in std_logic;
        leds: out std_logic_vector(15 downto 0);
        display: out std_logic_vector(6 downto 0);
        display_enable: out std_logic_vector(3 downto 0)
    );
end tragaperrasASMBasys3;

architecture Behavioral of tragaperrasASMBasys3 is

    signal inicio_limpio, fin_limpio: std_logic;
    component debouncer
        port(
            rst: in std_logic;
            clk: in std_logic;
            x: in std_logic;
            xDeb: out std_logic;
            xDebRisingEdge: out std_logic;
            xDebFallingEdge: out std_logic
        );
    end component;

    signal codeLEDs: std_logic_vector(2 downto 0);
    component efectosLEDs
        port(
            rst: in std_logic;
            clk: in std_logic;
            opCode: in std_logic_vector(2 downto 0);
            LEDs: out std_logic_vector(15 downto 0)
        );
    end component;

    signal display1, display2: std_logic_vector(3 downto 0);
    component tragaperrasASM 
        port(
            rst: in  STD_LOGIC;
            clk: in  STD_LOGIC;        
            inicio: in  STD_LOGIC;
            fin: in  STD_LOGIC;
            opCodeleds: out STD_LOGIC_VECTOR (2 downto 0);
            ruleta01: out STD_LOGIC_VECTOR (3 downto 0);
            ruleta02: out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    component displays 
        port(
            rst : in STD_LOGIC;
            clk : in STD_LOGIC;       
            digito_0 : in  STD_LOGIC_VECTOR (3 downto 0);
            digito_1 : in  STD_LOGIC_VECTOR (3 downto 0);
            digito_2 : in  STD_LOGIC_VECTOR (3 downto 0);
            digito_3 : in  STD_LOGIC_VECTOR (3 downto 0);
            display : out  STD_LOGIC_VECTOR (6 downto 0);
            display_enable : out  STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

begin

    boton_inicio: debouncer port map(
        rst => rst,
        clk => clk,
        x => inicio,
        xDeb => open,
        xDebRisingEdge => inicio_limpio,
        xDebFallingEdge => open
    );

    boton_fin: debouncer port map(
        rst => rst,
        clk => clk,
        x => fin,
        xDeb => open,
        xDebRisingEdge => fin_limpio,
        xDebFallingEdge => open
    );

    m_LEDs: efectosLEDs port map(
        rst => rst,
        clk => clk,
        opCode => codeLEDs,
        LEDs => leds
    );

    tragaperras: tragaperrasASM port map(
        rst => rst,
        clk => clk, 
        inicio => inicio_limpio, 
        fin => fin_limpio,
        opCodeleds => codeLEDs,
        ruleta01 => display1,
        ruleta02 => display2
    );

    num_displays: displays port map(
        rst => rst,
        clk => clk,
        digito_0 => display1,
        digito_1 => display2, 
        digito_2 => "0000",
        digito_3 => "0000",
        display => display, 
        display_enable => display_enable
    );

end Behavioral;
