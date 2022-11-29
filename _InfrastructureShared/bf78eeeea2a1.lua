-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bf78eeeea2a1 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 300000 then
  return mp.INFECTED
end
return mp.CLEAN

