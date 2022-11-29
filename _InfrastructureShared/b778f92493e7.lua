-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b778f92493e7 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2000000 then
  return mp.INFECTED
end
return mp.CLEAN

