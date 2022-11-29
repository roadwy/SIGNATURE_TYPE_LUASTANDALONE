-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/97787db319f2 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.getfilesize)() < 102400 then
  return mp.INFECTED
end
return mp.CLEAN

