-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4e29e1ba07ef 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "workbook.bin", 1, true) ~= nil and (mp.getfilesize)() < 400 then
  return mp.INFECTED
end
return mp.CLEAN

