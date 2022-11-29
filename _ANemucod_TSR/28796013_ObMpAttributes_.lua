-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_ANemucod_TSR/28796013_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (string.len)((mp.getfilename)()) < 10 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "%d+%.zip%->%d+%.js") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

