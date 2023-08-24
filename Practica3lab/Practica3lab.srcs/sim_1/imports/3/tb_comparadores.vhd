----------------------------------------------------------------------------------
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- Entity
-------------------------------------------------------------------------------
entity tb_comparadores is
end tb_comparadores;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------

architecture beh of tb_comparadores is
    -- Component Declaration for the Unit Under Test (UUT)    
    component red_arbol_comparadores
        generic ( 
            num_bits     : natural := 4;
            num_entradas : natural := 4
        );
        port(
            clk : in std_logic;
            X : in  std_logic_vector (num_entradas*num_bits-1 downto 0);
            S : out std_logic_vector (num_bits-1 downto 0)
        );
    end component;    

    constant num_bits     : natural := 4;
    constant num_entradas : natural := 16;

    -- Inputs
    signal X : std_logic_vector (num_entradas*num_bits-1 downto 0);
    
    -- Outputs
    signal S_arbol : std_logic_vector (num_bits-1 downto 0);
    
    --Clock 
    signal clk : std_logic;
    constant clk_period : time := 10ns;

begin
    
    clk_process: process
    begin 
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

	-- Instantiate the Unit Under Test (UUT)        
    UUT_a : red_arbol_comparadores
        generic map ( 
            num_bits     => num_bits,
            num_entradas => num_entradas
        )
        port map (
            clk => clk,
            X => X,
            S => S_arbol
    );        

   -- Stimulus process
    p_stim : process
    begin
        for i in 0 to num_entradas-1 loop
            X((i+1)*num_bits-1 downto i*num_bits) <= std_logic_vector(to_signed(i-(num_entradas/2), num_bits));
        end loop;     

        wait for 100ns;
        assert FALSE Report "Simulation Finished" severity FAILURE;
    end process p_stim;
end beh;
