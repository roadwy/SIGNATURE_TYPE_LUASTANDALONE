-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5729ee3aa946 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 2048 and (mp.getfilesize)() >= 400 then
  return mp.INFECTED
end
return mp.CLEAN

