-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/71b37b6e60ff 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\device\\harddiskvolume.\\windows\\system32\\ie4uinit%.exe", 1, false) ~= nil or (string.find)(l_0_0, "\\device\\harddiskvolume.\\windows\\syswow64\\ie4uinit%.exe", 1, false) ~= nil then
  return mp.CLEAN
end
return mp.INFECTED

