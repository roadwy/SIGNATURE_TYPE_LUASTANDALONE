-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/139614b024178 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 43000000 and (mp.getfilesize)() <= 49000000 then
  return mp.INFECTED
end
return mp.CLEAN

