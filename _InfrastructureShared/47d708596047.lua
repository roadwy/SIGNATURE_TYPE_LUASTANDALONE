local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L2_2 = L2_2(L1_1)
if L2_2 == nil then
  return mp.CLEAN
end
if MpCommon.GetOriginalFileName(L2_2) == nil then
  return mp.CLEAN
end
if MpCommon.GetOriginalFileName(L2_2) == "powershell.exe" and not string.find(string.lower(L2_2), "powershell.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
