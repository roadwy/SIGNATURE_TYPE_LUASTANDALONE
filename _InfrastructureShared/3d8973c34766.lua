-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3d8973c34766 

-- params : ...
-- function num : 0
if peattributes.ismsil and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN

