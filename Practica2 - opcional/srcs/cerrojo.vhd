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
-- Revision 0.02 - Optional part
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

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
        num_intentos: in STD_LOGIC_VECTOR(3 downto 0);
        bloqueado : out STD_LOGIC_VECTOR(15 downto 0);
        display : out STD_LOGIC_VECTOR(6 downto 0);
        an: out STD_LOGIC_VECTOR(3 downto 0)
    );
end cerrojo;

architecture Behavioral of cerrojo is

    type t_estados is (inicial, intentos, final);
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
    
    component efectosLEDs 
        port (
            rst: in STD_LOGIC;
            clk: in STD_LOGIC; 
            opCode: in STD_LOGIC_VECTOR(2 downto 0);
            LEDs: out std_logic_vector(15 downto 0)
        );
    end component;

    signal intentos_restantes: STD_LOGIC_VECTOR(3 downto 0);
    signal opCode: STD_LOGIC_VECTOR(2 downto 0);
    signal num_intentos_aux, num_intentos_aux_sig: integer;

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

TRYS: process(clk) 
begin 
    if (rising_edge(clk)) then 
        if (rst = '1') then 
            num_intentos_aux <= 0;
        else 
            num_intentos_aux <= num_intentos_aux_sig;
        end if;
    end if; 
end process TRYS;

COMB: process(estado, boton_limpio, correct_key, clave, num_intentos, num_intentos_aux)
begin

        estado_sig <= estado;
        correct_key_aux <= correct_key;
        num_intentos_aux_sig <= num_intentos_aux;
        
        case estado is
        when inicial =>
            opCode <= "001";
            intentos_restantes <= "0000";
            if (boton_limpio = '1' and num_intentos /= "0000") then
                num_intentos_aux_sig <= to_integer(unsigned(num_intentos));
                estado_sig <= intentos;
                correct_key_aux <= clave;
            end if;

        when intentos =>
            opCode <= "000";
            intentos_restantes <= std_logic_vector(to_unsigned(num_intentos_aux, intentos_restantes'length)); 
            if (boton_limpio = '1') then                    
                if (clave = correct_key) then 
                    estado_sig <= inicial;
                else
                    -- Si se pusiese un 0 como condición habría un intento de más
                    if (num_intentos_aux > 1) then 
                        num_intentos_aux_sig <= num_intentos_aux - 1;
                    else 
                        estado_sig <= final;
                    end if;
                end if;
            end if;

        when final =>
            opCode <= "010";
            intentos_restantes <= "0000";

        end case;

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
    
    mod_efectosLEDs: efectosLEDs port map(
        rst => rst,
        clk => clk,
        opCode => opCode, 
        LEDs => bloqueado
    );

end Behavioral;
