local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = #L1_1
elseif L2_2 <= 10 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = GetRealPidForScenario
L3_3 = "CMDHSTR"
L2_2 = L2_2(L3_3)
L3_3 = TrackPidAndTechnique
L3_3(L2_2, "T1003", "ntdsutil_shadowcopy_access")
L3_3 = {
  "\\perflogs\\",
  "\\public\\",
  "c:\\temp",
  "\\windows\\temp\\",
  "\\music\\"
}
if contains(L1_1, L3_3) then
  return mp.INFECTED
end
return mp.LOWFI
