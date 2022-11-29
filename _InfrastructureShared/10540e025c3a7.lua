-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10540e025c3a7 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and pehdr.NumberOfSections == 3 and peattributes.isexe == true then
  return mp.INFECTED
end
return mp.CLEAN

