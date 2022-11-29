-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5f789dfae5eb 

-- params : ...
-- function num : 0
if pehdr.NumberOfSymbols > 80 and pehdr.NumberOfSections > 10 then
  return mp.INFECTED
end
return mp.CLEAN

