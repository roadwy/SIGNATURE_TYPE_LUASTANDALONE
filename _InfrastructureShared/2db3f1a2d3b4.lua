local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = 0
if L2_2 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
    if sysio.IsFileExists(L8_8) and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L8_8) ~= 0 and sysio.GetFileLastWriteTime(L8_8) / 10000000 - 11644473600 < MpCommon.GetCurrentTimeT() and MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L8_8) / 10000000 - 11644473600) < 600 then
      L3_3 = 1
      bm.add_related_file(L8_8)
    end
  end
end
if L3_3 == 1 then
  return L4_4
end
return L4_4
