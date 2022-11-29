-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6a7887a3a38a 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2576 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN

