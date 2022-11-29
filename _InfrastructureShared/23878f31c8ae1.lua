-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/23878f31c8ae1 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and (pesecs[1]).PointerToRawData == 4096 then
  return mp.INFECTED
end
return mp.CLEAN

