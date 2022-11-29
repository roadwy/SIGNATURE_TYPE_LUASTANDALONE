-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/17e7875550f96 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.getfilesize)() < 20480 then
  return mp.INFECTED
end
return mp.LOWFI

