local L0_0, L1_1, L2_2, L3_3
L0_0 = tostring
L1_1 = headerpage
L0_0 = L0_0(L1_1)
L1_1 = L0_0
L0_0 = L0_0.lower
L0_0 = L0_0(L1_1)
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "add%-mppreference%s+%-exclusionpath%s+([^%c%s]+)"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.len
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 ~= 2 and L2_2 ~= 3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L3_3 = L3_3("MpIsPowerShellAMSIScan")
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
  if L3_3 and mp.GetParentProcInfo(L3_3) ~= nil and not mp.IsKnownFriendlyFile(mp.GetParentProcInfo(L3_3).image_path, true, false) then
    mp.ReportLowfi(mp.GetParentProcInfo(L3_3).image_path, 4223781442)
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
