local L0_0, L1_1, L2_2
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
L2_2 = " -u [a-zA-Z0-9]{1,25}:[a-zA-Z0-9]{1,25}"
if MpCommon.StringRegExpSearch(L2_2, L1_1) == true then
  return mp.LOWFI
end
return mp.CLEAN
