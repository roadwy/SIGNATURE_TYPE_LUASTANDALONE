local L0_0
L0_0 = string.lower(MpCommon.PathToWin32Path(bm.get_imagepath()))
if L0_0 ~= nil and string.find(L0_0, "windows\\system32\\services.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
