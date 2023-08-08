library ieee;

use ieee.std_logic_1164.all;

entity uprocess is

    generic (n: integer := 8);

    port (
        i: in std_logic_vector (n-1 downto 0);
	ci: in std_logic;
        o: out std_logic_vector (n-1 downto 0);
	co: out std_logic
    );

end uprocess;

architecture arch of uprocess is 

	signal t: std_logic_vector (n downto 0);

begin

    t(0) <= ci;
    co <= t(n);

    fa_f: for i in 0 to n-1 generate
    
        fa_i: (i(i), t(i), s(i), t(i+1));
    
    end generate;

end arch;



