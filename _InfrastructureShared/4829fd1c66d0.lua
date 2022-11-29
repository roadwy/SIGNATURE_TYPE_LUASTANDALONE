-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4829fd1c66d0 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:(MSG)") then
  return mp.INFECTED
end
return mp.CLEAN

