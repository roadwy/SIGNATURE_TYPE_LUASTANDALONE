-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/59782d2747b1 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 1048000 then
  return mp.INFECTED
end
return mp.CLEAN

