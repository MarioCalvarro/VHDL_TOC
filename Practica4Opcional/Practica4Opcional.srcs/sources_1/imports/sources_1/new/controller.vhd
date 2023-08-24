----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2022 09:30:17
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is

    port(
        clk, reset, init : in STD_LOGIC;
        zero, mayor : in STD_LOGIC;
        control : out STD_LOGIC_VECTOR(6 downto 0);
        fin, cambio : out STD_LOGIC 
    );

end controller;

architecture Behavioral of controller is

    type T_STATE is (S0, S1, S2, S3, S4, S5);
    signal state, next_state : T_STATE;

    signal control_aux: STD_LOGIC_VECTOR(6 downto 0);
    alias load_a : STD_LOGIC is control_aux(0);
    alias load_n : STD_LOGIC is control_aux(1);
    alias load_r : STD_LOGIC is control_aux(2);
    alias mux_n : STD_LOGIC_VECTOR(1 downto 0) is control_aux(4 downto 3); --'1' para input externo
    alias mux_r : STD_LOGIC is control_aux(4); --'1' para input externo
    alias mux_c : STD_LOGIC is control_aux(5); --'1' para input externo

    signal cambio_aux, load_cambio : STD_LOGIC;

begin 

    control <= control_aux;

    SYNC_STATE: process (clk, reset)
    begin
        if rising_edge(clk) then
            if reset = '1' then 
                state <= S0;
                cambio <= '0';
            else 
                state <= next_state; 
            end if;
        end if;
    end process SYNC_STATE;

    BIESTABLE_CAMBIO: process (clk, reset)
    begin 
        if rising_edge(clk) then 
            if reset = '1' then 
                cambio <= '0';
            elsif load_cambio = '1' then 
                cambio <= cambio_aux;
            end if;
        end if;
    end process BIESTABLE_CAMBIO;


    COMB: process (state, init, zero)
    begin 

        load_a <= '0';
        load_n <= '0';
        load_r <= '0';
        load_cambio <= '0';
        
        mux_n <= "00";
        mux_r <= '0';
        mux_c <= '0';
        
        cambio_aux <= '0';
        fin <= '0';

    case state is 

        when S0 => 
            fin <= '1';
            if (init = '1') then
                next_state <= S1;
            else 
                next_state <= S0;
            end if;
        when S1 =>
            load_a <= '1';
            load_n <= '1';
            load_r <= '1';
            load_cambio <= '1';
            
            mux_n <= "10";
            mux_r <= '1';
            
            next_state <= S2;
        when S2 =>
            if (mayor = '1') then 
                next_state <= S4;
            elsif (zero = '1') then 
                next_state <= S0; 
                load_cambio <= '1';
            else 
                next_state <= S3;
            end if;
        when S3 => 
            load_n <= '1';
            load_r <= '1';
            next_state <= S5;
        -- Los nuevos estados añadidos sirven para cambiar A y N
        when S4 => 
            -- Cambiar A y N
            cambio_aux <= '1';
            load_cambio <= '1';

            mux_c <= '1';
            mux_n <= "01";
            load_a <= '1';
            load_n <= '1';
            next_state <= S5;
        when S5 => 
            -- Equivalente al antiguo S2
            if (zero = '1') then 
                next_state <= S0;
                load_cambio <= '1';
            else 
                next_state <= S3;
            end if;

    end case;
    end process COMB;

end Behavioral;
