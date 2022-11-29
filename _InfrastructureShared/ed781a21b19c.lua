-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ed781a21b19c 

-- params : ...
-- function num : 0
if peattributes.ismsil then
  (mp.set_mpattribute)("HSTR:Worm:MSIL/Cribz!modules")
  return mp.INFECTED
end
return mp.CLEAN

