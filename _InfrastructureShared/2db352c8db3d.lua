local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.wp2
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L0_0 = L0_0(L1_1)
if L0_0 then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = mp
    L6_6 = L6_6.ContextualExpandEnvironmentVariables
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
    L6_6 = sysio
    L6_6 = L6_6.IsFileExists
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
    if L6_6 then
      L6_6 = mp
      L6_6 = L6_6.IsKnownFriendlyFile
      L7_7 = L5_5
      L6_6 = L6_6(L7_7, false, false)
      if not L6_6 then
        L6_6 = mp
        L6_6 = L6_6.ReportLowfi
        L7_7 = L5_5
        L6_6(L7_7, 1632017330)
      end
    end
  end
  if L1_1 then
    L6_6 = true
    if not L2_2 then
      L6_6 = true
    elseif L2_2 then
      return L2_2
    end
    if L2_2 then
      for L6_6, L7_7 in L3_3(L4_4) do
        L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
        if sysio.IsFileExists(L7_7) and not mp.IsKnownFriendlyFile(L7_7, false, false) then
          mp.ReportLowfi(L7_7, 705262311)
        end
      end
    end
    return L3_3
  end
end
return L1_1
