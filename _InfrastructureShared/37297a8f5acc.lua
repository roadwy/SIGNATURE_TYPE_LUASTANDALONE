-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/37297a8f5acc 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:(MSG)") then
  return mp.INFECTED
end
return mp.CLEAN

