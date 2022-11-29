-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ac78ca9f5c1b 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 5048000 then
  return mp.INFECTED
end
return mp.CLEAN

