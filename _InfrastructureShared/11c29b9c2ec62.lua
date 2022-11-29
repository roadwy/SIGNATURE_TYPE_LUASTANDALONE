-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11c29b9c2ec62 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCPT:VBSSplit") and (mp.get_mpattribute)("BM_TEXT_FILE") then
  return mp.INFECTED
end
return mp.CLEAN

