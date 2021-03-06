--  GHDL Run Time (GRT) - Wave option file package for reading the tree.
--  Copyright (C) 2016 Jonas Baggett
--
--  GHDL is free software; you can redistribute it and/or modify it under
--  the terms of the GNU General Public License as published by the Free
--  Software Foundation; either version 2, or (at your option) any later
--  version.
--
--  GHDL is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or
--  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
--  for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with GCC; see the file COPYING.  If not, write to the Free
--  Software Foundation, 59 Temple Place - Suite 330, Boston, MA
--  02111-1307, USA.
--
--  As a special exception, if other files instantiate generics from this
--  unit, or you link this unit with other files to produce an executable,
--  this unit does not by itself cause the resulting executable to be
--  covered by the GNU General Public License. This exception does not
--  however invalidate any other reasons why the executable file might be
--  covered by the GNU Public License.

-- Description: Wave option file child package for reading the tree created
--              after parsing the wave option file. It provides functions to
--              find in the tree which signals are to be displayed or not

with Grt.Types; use Grt.Types;

package Grt.Wave_Opt_File.Tree_Reading is
   pragma Preelaborate;

   -- Returns the top element of the tree corresponding to the index given, but
   -- only if the name given matches with it.  Otherwise returns null
   function Get_Top_Cursor (Name : Ghdl_C_String; Index : Tree_Index_Type)
                           return Elem_Acc;

   -- If there is an element in the parent element given that match the name
   -- given, returns it, otherwise returns null
   function Get_Cursor
     (Name : Ghdl_C_String; Parent : Elem_Acc; Is_Signal : Boolean := False)
     return Elem_Acc;

   -- Returns true if the element given is not null, which means it exists in
   -- the tree of the VHDL elements to be displayed
   function Is_Displayed (Cursor : Elem_Acc) return Boolean;

   -- Read the whole tree and check if every element was found in design
   procedure Check_If_All_Found;

end Grt.Wave_Opt_File.Tree_Reading;
