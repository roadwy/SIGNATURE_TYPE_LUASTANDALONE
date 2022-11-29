-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7778b5e5d6ab 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 5000 then
  return mp.INFECTED
end
return mp.CLEAN

