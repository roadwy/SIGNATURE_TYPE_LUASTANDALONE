-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c24197e3e0d6 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 2048 then
  return mp.INFECTED
end
return mp.CLEAN

