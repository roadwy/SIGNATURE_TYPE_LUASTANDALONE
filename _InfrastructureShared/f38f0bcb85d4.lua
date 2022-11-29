-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f38f0bcb85d4 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 100000 and (mp.getfilesize)() < 300000 then
  return mp.INFECTED
end
return mp.CLEAN

