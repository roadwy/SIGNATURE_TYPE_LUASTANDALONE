-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9eb3864e2c25 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
if l_0_0 and (string.len)(l_0_0) > 50 then
  return mp.INFECTED
end
return mp.CLEAN

