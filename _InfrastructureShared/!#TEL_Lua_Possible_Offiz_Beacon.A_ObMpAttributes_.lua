-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Lua_Possible_Offiz_Beacon.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0:find("->word/_rels/document.xml.rels", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

