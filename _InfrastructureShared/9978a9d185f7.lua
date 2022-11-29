-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9978a9d185f7 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 700000 and (mp.getfilesize)() >= 300000 then
  return mp.INFECTED
end
return mp.CLEAN

