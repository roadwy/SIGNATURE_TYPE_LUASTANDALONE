-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/22878db78a8af 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2560000 and pehdr.NumberOfSections == 5 and (pesecs[5]).Name == "" then
  return mp.INFECTED
end
return mp.CLEAN

