-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bdb306c3c3b0_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).utf8p2 == (this_sigattrlog[3]).utf8p1 then
  return mp.INFECTED
end
return mp.CLEAN

