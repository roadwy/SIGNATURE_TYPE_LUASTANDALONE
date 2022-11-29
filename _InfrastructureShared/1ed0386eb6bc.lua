-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1ed0386eb6bc 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.find)((string.lower)(l_0_0), ".asar$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

