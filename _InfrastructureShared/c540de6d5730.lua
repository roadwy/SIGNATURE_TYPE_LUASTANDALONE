-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c540de6d5730 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 4000000 then
  return mp.LOWFI
end
return mp.CLEAN

