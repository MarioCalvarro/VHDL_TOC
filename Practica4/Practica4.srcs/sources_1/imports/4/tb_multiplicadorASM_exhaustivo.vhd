library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-------------------------------------------------------------------------------
-- Entidad
-------------------------------------------------------------------------------
entity tb_multiplicadorASM_exhaustivo is
end tb_multiplicadorASM_exhaustivo;

-------------------------------------------------------------------------------
-- Arquitectura
-------------------------------------------------------------------------------

architecture beh of tb_multiplicadorASM_exhaustivo is

-- Declaracion del componente que vamos a simular
    component multiplicadorASM
        port (
            rst             : in  std_logic;
            clk             : in  std_logic;
            A               : in  std_logic_vector(3 downto 0);
            B               : in  std_logic_vector(3 downto 0);
            inicio          : in  std_logic;
            R               : out std_logic_vector(7 downto 0);
            fin             : out std_logic
      );
    end component;

-- Entradas
  signal rst             : std_logic;
  signal clk             : std_logic;
  signal A               : std_logic_vector(3 downto 0) := (others => '0');
  signal B               : std_logic_vector(3 downto 0) := (others => '0');
  signal inicio          : std_logic;  

-- Salidas
  signal R               : std_logic_vector(7 downto 0);
  signal fin             : std_logic; 

-- Depuración
  signal D               : std_logic_vector(7 downto 0);

-- Clock
  constant clk_period : time := 10ns;
  
begin

-- Instanciacion de la unidad a simular 
  dut : multiplicadorASM
        port map(
            rst             => rst,
            clk             => clk,
            A               => A,
            B               => B,
            inicio          => inicio,
            R               => R,
            fin             => fin
      );

    clk_process: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

-- Proceso de estimulos
  p_stim : process
    variable v_i : natural := 0;
    variable v_j : natural := 0;
  begin
    rst <= '1';
    wait for 35 ns;
    rst <= '0';
    i_loop : for v_i in 0 to 15 loop
      j_loop : for v_j in 0 to 15 loop
        inicio <= '1';
        A <= std_logic_vector(to_unsigned(v_i, 4));
        B <= std_logic_vector(to_unsigned(v_j, 4));
        D <= std_logic_vector(to_unsigned(v_i,4)*to_unsigned(v_j,4));
        wait for clk_period;
        inicio <= '0';
        wait until fin = '1';
        assert R = D
          report "Error: multiplicación incorrecta"
          severity error;        
        wait for clk_period;
      end loop j_loop;
    end loop i_loop;
    wait;
  end process p_stim;

end beh;
