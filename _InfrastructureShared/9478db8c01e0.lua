-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9478db8c01e0 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.isexe == true then
  return mp.INFECTED
end
return mp.CLEAN
