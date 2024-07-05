local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L2_2 = L2_2(L1_1)
if not L2_2 then
  return mp.CLEAN
end
if string.find(string.lower(L2_2), "\\windows\\temp", 1, true) and mp.GetParentProcInfo() and string.find(string.lower(mp.GetParentProcInfo().image_path), "python", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
