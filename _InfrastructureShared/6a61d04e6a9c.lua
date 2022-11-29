-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6a61d04e6a9c 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 972800 and (mp.getfilesize)() >= 665600 then
  return mp.INFECTED
end
return mp.CLEAN

