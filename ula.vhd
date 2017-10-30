library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

ENTITY ula32bits IS
	port(entrada1, entrada2 : in std_logic_vector(31 downto 0); -- entradas 1 e 2 de 32 bits
		controle : in std_logic_vector(2 downto 0); -- 3 entradas de controle
		logico_slt : out std_logic; -- saida logica de tamanho 1 para o slt
	   saida, slt1, slt2 : out std_logic_vector(31 downto 0)); -- saidas (as saidas slt 1 e 2 fiz somente para testar os numeros na base binaria sem complemento de 2)
END ula32bits;

architecture behavioral of ula32bits is
begin
	process(controle)
	variable flag: std_logic_vector(31 downto 0); -- flag de controle das operacoes
	variable flag_slt1: std_logic_vector(31 downto 0); -- flags especificas do slt
	variable flag_slt2: std_logic_vector(31 downto 0);

	begin
	case controle is
		when "000" => -- soma
			flag := entrada1 + entrada2;
		when "001" => -- subtracao
			flag := entrada1 - entrada2;
		when "010" => -- and
			flag := entrada1 and entrada2;
		when "011" => -- or
			flag := entrada1 or entrada2;
		when "100" => -- slt

			flag_slt1 := not(entrada1) + 1; -- tira o complemento de 2
			flag_slt2 := not(entrada2) + 1; -- tira o complemento de 2

			if flag_slt1 < flag_slt2 then  -- teste do slt
			flag := "11111111111111111111111111111111";
			else
			flag := "00000000000000000000000000000000";
			end if;

			if flag="00000000000000000000000000000000" then
			logico_slt <= '0'; -- se entrada1 > entrada2
			else
			logico_slt <= '1'; -- se entrada1 < entrada2
			end if;

			slt1 <= flag_slt1; -- saida da entrada1 sem complemento de 2 (so funciona no slt)
			slt2 <= flag_slt2; -- saida da entrada2 sem complemento de 2 (so funciona no slt)
			
		when others => -- os demais escolhi ser soma
			flag := entrada1 + entrada2;
	end case;
	saida <= flag; -- saida final das operacoes
	end process;
end behavioral;