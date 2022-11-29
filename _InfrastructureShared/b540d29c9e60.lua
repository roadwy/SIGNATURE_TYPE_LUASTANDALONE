-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b540d29c9e60 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 32768 then
  return mp.CLEAN
end
return mp.INFECTED

