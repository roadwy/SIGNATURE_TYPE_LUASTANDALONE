-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4629d417714f 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_UNKNOWN_FILE") then
  return mp.INFECTED
end
return mp.CLEAN
