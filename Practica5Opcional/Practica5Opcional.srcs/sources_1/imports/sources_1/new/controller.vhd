----------------------------------------------------------------------------------
-- Company: UCM
-- Engineer: Mario Calvarro Marines
-- 
-- Create Date: 24.11.2022 18:13:49
-- Design Name: 
-- Module Name: controller - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is
    Port (
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
end controller;

architecture Behavioral of controller is

    -- S3 derrota, S4 victoria
    type T_STATE is (S0, S1, S2, S3, S4);
    signal state, state_aux: T_STATE;

    alias reset_con1: std_logic is control(0);
    alias reset_con2: std_logic is control(1);
    alias reset_con_longo: std_logic is control(2);
    alias enable_con1: std_logic is control(3);
    alias enable_con2: std_logic is control(4);
    alias enable_con_longo: std_logic is control(5);
    alias control_creditos: std_logic_vector is control(7 downto 6);

begin

    SYNC: process(clk) 
    begin 
        if rising_edge(clk) then 
            if rst = '1' then 
                state <= S0;
            else 
                state <= state_aux;
            end if;
        end if;
    end process SYNC;

    COMB: process(state, init, fin, contador_5seg, contador_display, sin_creditos)
    begin
        
        reset_con1 <= '0';
        reset_con2 <= '0';
        reset_con_longo <= '0';
        enable_con1 <= '0';
        enable_con2 <= '0';
        enable_con_longo <= '0';

        state_aux <= state;

        -- Mantener créditos
        control_creditos <= "00";
        control_leds <= "000";

        case state is 
            when S0 => 
                reset_con1 <= '1';
                reset_con2 <= '1';
                control_leds <= "100";

                if init = '1' and sin_creditos = '0' then 
                    state_aux <= S1;
                    -- Restar créditos
                    control_creditos <= "01";
                end if;

            when S1 => 
                enable_con1 <= '1';
                enable_con2 <= '1';
                reset_con_longo <= '1';

                if fin = '1' then 
                    state_aux <= S2;
                end if;

            when S2 => 
                if contador_display = '0' then 
                    state_aux <= S3;
                else 
                    -- Sumar creditos
                    control_creditos <= "10";
                    state_aux <= S4;
                end if;

            when S3 =>
                enable_con_longo <= '1';
                control_leds <= "011";

                if contador_5seg = '1' then 
                    state_aux <= S0;
                end if;

            when S4 =>
                enable_con_longo <= '1';
                control_leds <= "010";

                if contador_5seg = '1' then 
                    state_aux <= S0;
                end if;

        end case;
    end process COMB;

end Behavioral;
