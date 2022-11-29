-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b378e4d0fd3c 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isdll and peattributes.no_security and l_0_0 > 671744 and l_0_0 < 680000 then
  return mp.INFECTED
end
return mp.CLEAN

