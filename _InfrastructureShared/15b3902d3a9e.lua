local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "tiworker.exe", 1, true) or string.find(L0_0, "trustedinstaller.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
