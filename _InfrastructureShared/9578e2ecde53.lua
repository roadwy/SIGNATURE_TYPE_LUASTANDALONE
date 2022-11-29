-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9578e2ecde53 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN

