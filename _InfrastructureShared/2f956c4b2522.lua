-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2f956c4b2522 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:[ExportEP]") then
  return mp.INFECTED
end
return mp.CLEAN

