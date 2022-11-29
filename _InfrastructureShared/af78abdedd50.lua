-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/af78abdedd50 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:Golang") then
  return mp.INFECTED
end
return mp.CLEAN

