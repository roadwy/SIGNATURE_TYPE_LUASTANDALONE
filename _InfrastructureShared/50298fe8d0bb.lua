-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/50298fe8d0bb 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 54272 and (mp.getfilesize)() >= 46080 then
  return mp.INFECTED
end
return mp.CLEAN

