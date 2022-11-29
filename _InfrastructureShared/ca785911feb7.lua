-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ca785911feb7 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections <= 5 and (mp.getfilesize)() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN

