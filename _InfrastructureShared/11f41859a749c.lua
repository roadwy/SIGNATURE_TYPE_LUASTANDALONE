-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11f41859a749c 

-- params : ...
-- function num : 0
if peattributes.isexe == true and (mp.getfilesize)() < 50000 then
  return mp.INFECTED
end
return mp.CLEAN

