library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity IC_SPI_BUS_Decoder is
	port (
		-- i2c lines
		Address   	 : in  std_logic_vector(31 downto 0);
		IOSelect    			: in  std_logic;  	     -- i2c clock line output
		AS_L  : in  std_logic;      -- i2c clock line output enable, active low

		IIC0_Enable : out std_logic
	);
end entity IC_SPI_BUS_Decoder;

architecture structural of IC_SPI_BUS_Decoder is
begin
	process(Address)
	begin
		IIC0_Enable <= '0';
		if( AS_L = '0') then
			if(( IOSelect = '1' ) and (Address(15 downto 4) = B"1000_0000_0000")) then
				IIC0_Enable <= '1';
			end if;
		end if;
	end process ;
END;
