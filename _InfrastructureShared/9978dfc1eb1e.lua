-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9978dfc1eb1e 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 184320 and (mp.getfilesize)() >= 10240 then
  return mp.INFECTED
end
return mp.CLEAN
