----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2022 07:49:25
-- Design Name: 
-- Module Name: tb_contador - Behavioral
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

entity tb_contador is
--  Port ( );
end tb_contador;

architecture Behavioral of tb_contador is
    component contador16
        port (
            rst: in std_logic; 
            clk: in std_logic;
            cuenta: in std_logic; 
            salida: out std_logic_vector (3 downto 0)
        );
    end component;
    
    signal rst, clk, cuenta: std_logic;
    signal salida: std_logic_vector(3 downto 0); 
    
    constant clk_period : time := 100 ns;
    
begin
    
    uut: contador16 port map (
        rst => rst,
        clk => clk,
        cuenta => cuenta,
        salida => salida
    );
    
    -- Definicion del process de reloj
    reloj_process :process
       begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    
    stim_proc: process
    begin 
        rst <= '1';
        cuenta <= '0';
        wait for 50 ns;
        rst <= '0';
        cuenta <= '1';
        wait for 400 ns;
        cuenta <= '0';
        wait for 50 ns;
        rst <= '1';       
    end process;

        
end Behavioral;
