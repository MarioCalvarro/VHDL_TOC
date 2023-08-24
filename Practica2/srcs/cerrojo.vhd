----------------------------------------------------------------------------------
-- Company: UCM
-- Engineer: Mario Calvarro Marines
-- 
-- Create Date: 15.10.2022 20:05:56
-- Design Name: 
-- Module Name: cerrojo - Behavioral
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

entity cerrojo is
    Port ( 
        rst : in STD_LOGIC;
        clk : in STD_LOGIC;
        boton : in STD_LOGIC;
        clave : in STD_LOGIC_VECTOR(7 downto 0);
        bloqueado : out STD_LOGIC_VECTOR(15 downto 0);
        display : out STD_LOGIC_VECTOR(6 downto 0);
        an: out STD_LOGIC_VECTOR(3 downto 0)
    );
end cerrojo;

architecture Behavioral of cerrojo is

    type t_estados is (inicial, tres, dos, uno, final);
    signal estado, estado_sig: t_estados;

    component conv_7seg
        port(
            x: in STD_LOGIC_VECTOR(3 downto 0);
            display: out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    component debouncer 
        port (
            rst: in STD_LOGIC;
            clk: in STD_LOGIC;
            x: in STD_LOGIC;
            xDeb: out STD_LOGIC;
            xDebFallingEdge: out STD_LOGIC;
            xDebRisingEdge: out STD_LOGIC
        );
    end component;

    signal intentos_restantes: STD_LOGIC_VECTOR(3 downto 0);

    signal correct_key, correct_key_aux: STD_LOGIC_VECTOR(7 downto 0);
    signal boton_limpio: STD_LOGIC;

begin

    an <= "1110";
    
SYNC: process(clk)
begin
    if (rising_edge(clk)) then 
        if (rst = '1') then 
            estado <= inicial;
        else 
            estado <= estado_sig;
        end if;
    end if;
end process SYNC;

KEY: process(clk)
begin 
    if (rising_edge(clk)) then 
        if (rst = '1') then 
            correct_key <= (others => '0');
        else 
            correct_key <= correct_key_aux;
        end if;
    end if;
end process KEY;

COMB: process(estado, boton_limpio, correct_key, clave)--clk)
begin

--    if (boton_limpio = '1' and rising_edge(clk)) then

        estado_sig <= estado;
        correct_key_aux <= correct_key;
        
        case estado is
        when inicial =>
            bloqueado <= (others => '1');
            if (boton_limpio = '1') then
                estado_sig <= tres;
                correct_key_aux <= clave;
            end if;
            intentos_restantes <= "0011";

        when tres =>
            bloqueado <= (others => '0');
            intentos_restantes <= "0011"; 
            if (boton_limpio = '1') then                    
                if (clave = correct_key) then 
                    estado_sig <= inicial;
                else
                    estado_sig <= dos;
                end if;
            end if;

        when dos => 
            bloqueado <= (others => '0');
            intentos_restantes <= "0010";
            if (boton_limpio = '1') then                                      
                if (clave = correct_key) then 
                    estado_sig <= inicial;
                else
                    estado_sig <= uno;
                end if;
            end if;

        when uno => 
            bloqueado <= (others => '0');
            intentos_restantes <= "0001";
            if (boton_limpio = '1') then     
                if (clave = correct_key) then 
                    estado_sig <= inicial;
                else
                    estado_sig <= final;
                end if;
            end if;

        when final =>
            bloqueado <= (others => '0');
            intentos_restantes <= "0000";

        end case;

--    end if;

end process COMB;

    mod_conv_7seg: conv_7seg port map(
        x => intentos_restantes,
        display => display
    );

    mod_conv_debouncer: debouncer port map(
        rst => rst,
        clk => clk,
        x => boton,
        xDeb => open,
        xDebFallingEdge => open,
        xDebRisingEdge => boton_limpio
    );

end Behavioral;
