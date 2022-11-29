-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e478a5dbb5a0 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 1048000 and pehdr.NumberOfSections <= 5 and (pesecs[5]).Name == "" then
  return mp.INFECTED
end
return mp.CLEAN

