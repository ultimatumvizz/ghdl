
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc912.vhd,v 1.2 2001-10-26 16:30:02 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

package c10s03b00x00p07n01i00912pkg is
  constant x : integer := 2;
end c10s03b00x00p07n01i00912pkg;

ENTITY c10s03b00x00p07n01i00912ent IS
END c10s03b00x00p07n01i00912ent;

ARCHITECTURE c10s03b00x00p07n01i00912arch OF c10s03b00x00p07n01i00912ent IS
  -- selected use of package element
  use work.c10s03b00x00p07n01i00912pkg.x;

BEGIN
  TESTING: PROCESS
  BEGIN
    assert NOT( x=2 )
      report "***PASSED TEST: c10s03b00x00p07n01i00912"
      severity NOTE;
    assert ( x=2 )
      report "***FAILED TEST: c10s03b00x00p07n01i00912 - A primary unit of a library can be made visible by selection."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c10s03b00x00p07n01i00912arch;
