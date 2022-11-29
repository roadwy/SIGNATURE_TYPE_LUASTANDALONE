-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8c29b9b8709c 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_LNK_FILE") then
  return mp.INFECTED
end
return mp.CLEAN

