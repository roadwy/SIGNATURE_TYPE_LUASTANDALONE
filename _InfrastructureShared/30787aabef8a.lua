-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/30787aabef8a 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 133376 and (mp.getfilesize)() <= 135424 then
  return mp.INFECTED
end
return mp.CLEAN

