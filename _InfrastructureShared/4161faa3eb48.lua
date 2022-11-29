-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4161faa3eb48 

-- params : ...
-- function num : 0
if peattributes.ismsil and pehdr.NumberOfSections == 3 and (mp.getfilesize)() == 80384 then
  return mp.INFECTED
end
return mp.CLEAN

