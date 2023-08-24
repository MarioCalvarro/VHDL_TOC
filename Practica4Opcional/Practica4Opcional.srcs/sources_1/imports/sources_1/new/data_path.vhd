----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2022 09:30:17
-- Design Name: 
-- Module Name: data_path - Structural
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

entity data_path is

    port(
        clk, reset : in STD_LOGIC;
        A, B: in STD_LOGIC_VECTOR(3 downto 0);
        control : in STD_LOGIC_VECTOR(6 downto 0);
        zero : out STD_LOGIC;
        mayor : out STD_LOGIC;
        r : out STD_LOGIC_VECTOR(7 downto 0)
    );

end data_path;

architecture Structural of data_path is

    component bit8_register 
        port (
            clk, reset, load : in STD_LOGIC;
            A : in STD_LOGIC_VECTOR(7 downto 0);
            B : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component bit8_register;

    signal control_aux : STD_LOGIC_VECTOR(6 downto 0);
    alias load_a : STD_LOGIC is control_aux(0);
    alias load_n : STD_LOGIC is control_aux(1);
    alias load_r : STD_LOGIC is control_aux(2);
    alias mux_n : STD_LOGIC_VECTOR(1 downto 0) is control_aux(4 downto 3); --'1' para input externo
    alias mux_r : STD_LOGIC is control_aux(5); --'1' para input externo
    alias mux_c : STD_LOGIC is control_aux(6); --'1' para input externo

    signal reg_a, reg_n, reg_r : STD_LOGIC_VECTOR(7 downto 0);
    signal aux_a, aux_n, aux_r : STD_LOGIC_VECTOR(7 downto 0);
    signal aux_cambio : STD_LOGIC;

    signal zeroes : STD_LOGIC_VECTOR(7 downto 0);

begin 

    control_aux <= control; 

    register_a : bit8_register port map(clk, reset, load_a, aux_a, reg_a); 

    register_n : bit8_register port map(clk, reset, load_n, aux_n, reg_n); 
    register_r : bit8_register port map(clk, reset, load_r, aux_r, reg_r); 

    r <= reg_r;

    with mux_n select aux_n <= STD_LOGIC_VECTOR(unsigned(reg_n) - 1) when "00",
                    aux_a when "01",
                    "0000"&B when "10",
                    "0000"&B when others;

    with mux_r select aux_r <= STD_LOGIC_VECTOR(unsigned(reg_r) + unsigned(reg_a)) when '0',
                    (others => '0') when others;

    with mux_c select aux_a <= "0000"&A when '0', 
                    reg_n when others;


    zero <= '1' when reg_n = zeroes else '0';

    mayor <= '1' when unsigned(reg_n) > unsigned(reg_a) else '0';

    zeroes <= (others => '0');

end Structural;
