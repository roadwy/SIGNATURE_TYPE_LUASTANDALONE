-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f378ec850c0f 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 11000 then
  return mp.INFECTED
end
return mp.CLEAN

