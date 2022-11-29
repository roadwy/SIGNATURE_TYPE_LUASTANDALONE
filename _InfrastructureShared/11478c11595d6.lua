-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11478c11595d6 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 327680 then
  return mp.INFECTED
end
return mp.CLEAN

