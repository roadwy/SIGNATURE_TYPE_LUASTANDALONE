-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/122786d3ac1b2 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() >= 8448 and (mp.getfilesize)() <= 13056 then
  return mp.INFECTED
end
return mp.CLEAN

