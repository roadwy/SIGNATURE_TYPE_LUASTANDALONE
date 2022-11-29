-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a978eb0f2df2_Flags_1 

-- params : ...
-- function num : 0
if peattributes.packed or pehdr.NumberOfSections > 8 and (pesecs[1]).Name == "" then
  return mp.INFECTED
end
return mp.CLEAN

