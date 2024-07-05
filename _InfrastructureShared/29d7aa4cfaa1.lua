local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if MpCommon.GetImagePathFromPid(L0_0) == nil or #MpCommon.GetImagePathFromPid(L0_0) <= 7 then
  return mp.CLEAN
end
if string.lower(MpCommon.GetImagePathFromPid(L0_0):match("([^\\]+)$")) ~= nil and string.lower(MpCommon.GetImagePathFromPid(L0_0):match("([^\\]+)$")) ~= "wscript.exe" and string.lower(MpCommon.GetImagePathFromPid(L0_0):match("([^\\]+)$")) ~= "cscript.exe" and versioning.GetCloudBlockLevel() >= 4 then
  return mp.INFECTED
end
return mp.LOWFI
