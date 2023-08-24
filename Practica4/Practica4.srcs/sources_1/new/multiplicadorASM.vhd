----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2022 19:06:19
-- Design Name: 
-- Module Name: multiplicadorASM - Behavioral
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

entity multiplicadorASM is

    Port ( 
        rst : in STD_LOGIC;
        clk : in STD_LOGIC;
        inicio : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(3 downto 0);
        B : in STD_LOGIC_VECTOR(3 downto 0);
        R : out STD_LOGIC_VECTOR(7 downto 0);
        fin : out STD_LOGIC
    );

end multiplicadorASM;

architecture structural of multiplicadorASM is

    component controller
        port(
            clk, reset, init : in STD_LOGIC;
            zero : in STD_LOGIC;
            control : out STD_LOGIC_VECTOR(4 downto 0);
            fin : out STD_LOGIC 
        );
    end component controller;

    component data_path 
        port(
            clk, reset : in STD_LOGIC;
            A, B: in STD_LOGIC_VECTOR(3 downto 0);
            control : in STD_LOGIC_VECTOR(4 downto 0);
            zero : out STD_LOGIC;
            r : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component data_path;

    signal zero : STD_LOGIC;
    signal control : STD_LOGIC_VECTOR(4 downto 0);

begin 

    controller_a : controller port map(clk, rst, inicio, zero, control, fin);
    data_path_a : data_path port map(clk, rst, A, B, control, zero, R);

end structural;
