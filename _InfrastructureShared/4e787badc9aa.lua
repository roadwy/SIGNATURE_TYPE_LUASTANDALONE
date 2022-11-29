-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4e787badc9aa 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.x86_image == false and peattributes.ismsil == false then
  return mp.INFECTED
end
return mp.CLEAN

