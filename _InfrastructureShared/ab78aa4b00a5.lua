-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ab78aa4b00a5 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.NumberOfSections == 8 then
  return mp.INFECTED
end
return mp.CLEAN

