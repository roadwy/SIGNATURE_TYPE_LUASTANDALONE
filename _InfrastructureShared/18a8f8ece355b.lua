-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/18a8f8ece355b 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 155000 and (mp.getfilesize)() < 195000 then
  return mp.INFECTED
end
return mp.CLEAN

