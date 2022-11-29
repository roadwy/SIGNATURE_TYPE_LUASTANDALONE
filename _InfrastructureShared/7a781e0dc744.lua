-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7a781e0dc744 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 5600000 then
  return mp.INFECTED
end
return mp.CLEAN

