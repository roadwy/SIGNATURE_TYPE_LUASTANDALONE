-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4e7851d0f743 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 500000 then
  return mp.INFECTED
end
return mp.CLEAN

