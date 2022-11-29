-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/517859a1c5fb 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 196608 then
  return mp.INFECTED
end
return mp.CLEAN

