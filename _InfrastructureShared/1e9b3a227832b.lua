local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(L0_0)
if not L1_1 then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if not string.find(L1_1, "c:\\", 1, true) then
  return mp.CLEAN
end
if string.find(L1_1, "\\program files", 1, true) or string.find(L1_1, "\\windows", 1, true) or string.find(L1_1, "\\services.exe", 1, true) or string.find(L1_1, "\\ruby.exe", 1, true) or string.find(L1_1, "\\nativerestagent.exe", 1, true) or string.find(L1_1, "\\lindbak backoffice", 1, true) then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L1_1, "NewPECreatedNoCert") then
  return mp.CLEAN
end
if mp.IsKnownFriendlyFile(L1_1, true, false) == true then
  return mp.CLEAN
end
if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L1_1) ~= 0 then
  if sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600) > 600 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
