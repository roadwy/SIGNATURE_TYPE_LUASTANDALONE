-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/db780d12f371 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 655360 then
  return mp.INFECTED
end
return mp.CLEAN

