local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and string.find(L0_0, "\\svchost.exe", 1, true) and MpCommon.GetPersistContextCountNoPath("GenericSystemWinlogon") > 0 then
  return mp.INFECTED
end
return mp.CLEAN
