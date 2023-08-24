library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity BlockRam is
	port (
		clka, wea, ena : in STD_LOGIC;
		addra : in STD_LOGIC_VECTOR (8 downto 0);
		dina : in STD_LOGIC_VECTOR (31 downto 0);
		douta : out STD_LOGIC_VECTOR (31 downto 0)
	);
end BlockRam;

architecture Behavioral of BlockRam is

	type ram_type is array (0 to 511) of std_logic_vector (31 downto 0);
	signal ram : ram_type := 
									(
-- PROGRAMA MIPS FC
										x"00631816",-- 			    xor R3, R3, R3 (mv R3, #0) Resultado							    0x00000000	000000 00011 00011 00011 00000 010110
										x"00842016",--  		    xor R4, R4, R4 (mv R4, #0) Para tener un cero				        0x00000004	000000 00100 00100 00100 00000 010110
										x"8C800040",-- 			    lw R0, 64(R4)  (lw A, R0)											0x00000008	100011 00100 00000 0000000001000000
										x"8C810044",-- 			    lw R1, 68(R4)  (lw B, R1)											0x0000000C	100011 00100 00001 0000000001000100
										x"8C820048",-- 			    lw R2, 72(R4)  (lw UNO, R2)										    0x00000010	100011 00100 00010 0000000001001000
                                        x"8C85004C",-- 			    lw R5, 76(R4)  (lw CUATRO, R5)									    0x00000014	100011 00100 00101 0000000001001100
                                        x"10A40007", --	WHILE:	    beq R5, R4, FIN														0x00000018	000100 00101 00100 0000000000000111
                                        x"00223024", --				and R6, R1, R2														0x0000001C	000000 00001 00010 00110 00000 100100
                                        x"10C40001", --				beq R6, R4, SIGUE													0x00000020	000100 00110 00100 0000000000000001
                                        x"00601820", -- 			add R3, R3, R0														0x00000024	000000 00011 00000 00011 00000 100000
                                        x"00000002", --	SIGUE:	    sll1 R0, R0															0x00000028	000000 00000 00000 00000 00000 000010
                                        x"00200800", --				sra1 R1, R1															0x0000002C	000000 00001 00000 00001 00000 000000
                                        x"00A22822", -- 			sub R5, R5, R2														0x00000030	000000 00101 00010 00101 00000 100010
                                        x"1000FFF8", -- FINAL:	    beq R0, R0, WHILE													0x00000034	000100 00000 00000 1111111111111000
                                        x"AC830050", -- FIN: 		sw R3, 80(R4)  (sw R3, C) 											0x00000038	101011 00100 00011 0000000000110010
                                        x"1000FFFF", -- FINAL:	    beq R0, R0, FINAL													0x0000003C	000100 00000 00000 1111111111111111
										x"00000002", -- 			VALOR A ¿Sin tabla de literales para simplificar?			        0x00000040	0x00000002
										x"00000003", -- 			VALOR B																0x00000044	0x00000003
										x"00000001", --			    VALOR UNO															0x00000048	0x00000001
										x"00000004", --			    VALOR CUATRO														0x0000004C	0x00000004
													 --			    VALOR C = A*B														0x00000050
										
										others => x"00000000"
									);

begin

	process( clka )
	begin
		if rising_edge(clka) then
			if ena = '1' then
				if wea = '1' then
					ram(to_integer(unsigned(addra))) <= dina;
					douta <= dina;
				else
					douta <= ram(to_integer(unsigned(addra)));
				end if;
			end if;
		end if;
	end process;
	
end Behavioral;

