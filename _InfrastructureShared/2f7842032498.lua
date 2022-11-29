-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2f7842032498 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 100000 then
  return mp.LOWFI
end
return mp.CLEAN

