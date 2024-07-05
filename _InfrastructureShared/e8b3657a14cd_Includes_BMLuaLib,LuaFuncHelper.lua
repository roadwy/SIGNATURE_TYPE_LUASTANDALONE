local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
L1_1 = contains
L2_2 = L0_0
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L4_4 = " /i "
L5_5 = " /q "
L6_6 = " -i "
L7_7 = " -q "
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "%'?\"?https?%://(%d+%.%d+%.%d+%.%d+)"
L3_3 = L1_1(L2_2, L3_3)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = isPublicIP
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L0_0
L6_6 = "(https?%://%d+%.%d+%.%d+%.%d+.*%.msi)"
L6_6 = L4_4(L5_5, L6_6)
if not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = {}
L7_7.SIG_CONTEXT = "MSIExec_IPCheck"
L7_7.CONTENT_SOURCE = "BM"
L7_7.PROCESS_CONTEXT = "MSIEXEC.EXE"
L7_7.FILELESS = "true"
L7_7.CMDLINE_URL = "true"
L7_7.TAG = "INTERFLOW"
if SafeGetUrlReputation({L6_6}, L7_7, false, 2000).urls[L6_6] and SafeGetUrlReputation({L6_6}, L7_7, false, 2000).urls[L6_6].determination == 2 and SafeGetUrlReputation({L6_6}, L7_7, false, 2000).urls[L6_6].confidence >= 60 then
  return mp.INFECTED
end
return mp.CLEAN
