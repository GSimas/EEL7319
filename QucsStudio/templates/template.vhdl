-- ***********************************************************
-- Description:
-- Date:
-- Author:
-- ***********************************************************


-- -----------------------------------------------------------
-- sub entity

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity SubEntity is
   port (signal1 : in  std_logic;
         signal2 : out std_logic);
end entity;

architecture SubArch of SubEntity is
begin

  signal2 <= not signal1;

end architecture;


-- -----------------------------------------------------------
-- main entity

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity TestBench is  -- main entity has to be named "TestBench"!
end entity;

architecture Behavioural of TestBench is
  signal clock  : std_logic;
  signal intern : std_logic;
begin

  P1:process
  begin
    intern <= 'U';  wait for 2 ns;  -- uninitialized
    intern <= 'X';  wait for 2 ns;  -- unknown
    intern <= 'W';  wait for 2 ns;  -- weak unknown
    intern <= 'Z';  wait for 2 ns;  -- high impedance
    intern <= 'L';  wait for 2 ns;  -- weak 0
    intern <= 'H';  wait for 2 ns;  -- weak 1
    intern <= '1';  wait for 2 ns;  -- logic 1
    intern <= '0';  wait for 2 ns;  -- logic 0
    wait;  -- waiting forever ends the simulation
  end process;

  Sub1: entity SubEntity port map (intern, clock);

end architecture;
