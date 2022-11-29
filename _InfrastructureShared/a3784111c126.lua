-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a3784111c126 

-- params : ...
-- function num : 0
if peattributes.ismsil and peattributes.x86_image then
  return mp.INFECTED
end
return mp.CLEAN

