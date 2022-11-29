-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c786519e62c 

-- params : ...
-- function num : 0
if (mp.getfilesize)() == 131072 then
  return mp.INFECTED
end
return mp.CLEAN

