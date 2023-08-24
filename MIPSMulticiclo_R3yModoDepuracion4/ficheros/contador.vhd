library IEEE;
use IEEE.std_logic_1164.all;

entity contador is
	port( 
		clk	  : in  std_logic;
		rst	  : in  std_logic;
		load  : in  std_logic;
		seleccion	  : in  std_logic_vector( 1 downto 0 );
		dout  : out std_logic_vector( 15 downto 0 ) 
	);
end contador;

architecture contadorArch of contador is

    signal contador0, contador1, contador2, contador3 : std_logic_vector(3 downto 0);
   
begin

    dout <= contador3&contador2&contador1&contador0;

	process(clk, rst)
	begin
		if (rst = '1') then
			dout <= (others => '0');
		elsif rising_edge(clk) then			
			if (load = '1') then
                if (seleccion = "00") then 
                    contador0 <= std_logic_vector(unsigned(contador0) + 1);
                elsif (seleccion = "01") then 
                    contador1 <= std_logic_vector(unsigned(contador1) + 1);
                elsif (seleccion = "10") then 
                    contador2 <= std_logic_vector(unsigned(contador2) + 1);
                else 
                    contador3 <= std_logic_vector(unsigned(contador3) + 1);
                end if;
            end if;
		end if;
   end process;

end contadorArch;