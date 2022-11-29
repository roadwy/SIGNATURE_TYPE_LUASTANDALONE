-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ab78096c8113 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.ismsil == false and (mp.getfilesize)() < 15000 then
  return mp.INFECTED
end
return mp.CLEAN

