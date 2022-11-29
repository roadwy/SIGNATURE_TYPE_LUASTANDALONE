-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/22078ea38ae1c 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 1048576 then
  return mp.INFECTED
end
return mp.CLEAN

