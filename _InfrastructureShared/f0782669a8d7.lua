-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f0782669a8d7 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 5 and (pesecs[5]).Name == ".idata" then
  return mp.INFECTED
end
return mp.CLEAN

