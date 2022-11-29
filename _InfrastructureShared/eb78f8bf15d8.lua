-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/eb78f8bf15d8 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.ismsil == true and l_0_0 > 1388544 and l_0_0 < 1396736 then
  return mp.INFECTED
end
return mp.CLEAN

