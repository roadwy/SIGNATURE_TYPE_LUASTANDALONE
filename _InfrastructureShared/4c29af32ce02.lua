-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4c29af32ce02 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 512 then
  return mp.INFECTED
else
  return mp.LOWFI
end
return mp.CLEAN

