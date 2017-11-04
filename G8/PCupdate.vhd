-- --------------------------------
-- PCUpdate
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity PCupdate is

port( clk     : in  std_logic;
		reset   : in  std_logic;
		zero	  : in  std_logic;
		branch  : in  std_logic;
		jump	  : in  std_logic;
		offSet32: in  std_logic_vector(31 downto 0);
		jAddr26 : in  std_logic_vector(26 downto 0);
		pc      : out std_logic_vector(31 downto 0));
end PCupdate;

architecture Behavioral of PCupdate is
	signal s_pc : unsigned(31 downto 0);

begin	
	process(clk, reset, zero, branch, jump, offSet32, jAddr26)
	begin
		if(rising_edge(clk)) then
			-- reset
			if(reset = '1') then					
				s_pc <= (others => '0');
			else
			
				-- jump
				if (jump = '1') then
					s_pc <= s_pc + unsigned(jAddr26);									-- Compute JTA = PC + jAddr26 extendido com sinal para 32 bits				
				else
					-- branch
					if(branch = '1') AND (zero = '1') then											
						s_pc <= (s_pc + 4) + shift_left(unsigned(offSet32), 2);	-- Compute BTA = (PC + 4) + (instruction_offset * 4)
				
					-- default
					else										
						s_pc <= s_pc + 4;
							
					end if;
				end if;
			end if;
		end if;
	end process;
	
	pc <= std_logic_vector(s_pc);
	
end Behavioral;