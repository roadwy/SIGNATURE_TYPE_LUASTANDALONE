-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/38d78d23eae7f 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 20000 then
  return mp.INFECTED
end
return mp.CLEAN

