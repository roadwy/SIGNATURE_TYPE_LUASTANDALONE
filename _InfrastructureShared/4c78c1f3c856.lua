-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4c78c1f3c856 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_IISMODULE") then
  return mp.INFECTED
end
return mp.CLEAN

