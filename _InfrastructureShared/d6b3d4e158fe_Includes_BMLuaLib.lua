local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.ContextualExpandEnvironmentVariables
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L2_2 = L1_1
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4
}
L2_2 = " -encode "
L3_3 = " -decode "
L4_4 = " -urlcache "
L2_2 = contains
L3_3 = L0_0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L3_3 = L0_0
L4_4 = "takari regulatory"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L3_3 = L0_0
L4_4 = "template master"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = bm
L3_3 = L3_3.get_imagepath
L12_12 = L3_3()
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L3_3())
L3_3 = contains
L4_4 = L2_2
L5_5 = "outlook.exe"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = contains
L4_4 = L2_2
L5_5 = "\\olk.exe"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {L4_4}
L4_4 = "OFFICE"
L4_4 = {}
L4_4.min = 1
L4_4.max = 5
L5_5 = QueryProcContext
L6_6 = L3_3
L7_7 = L4_4
L5_5 = L5_5(L6_6, L7_7)
if not L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {L6_6}
L6_6 = "SCRIPTENG"
L6_6 = {}
L6_6.min = 1
L6_6.max = 5
L7_7 = QueryProcContext
L7_7 = L7_7(L8_8, L9_9)
if not L7_7 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.GetExecutablesFromCommandLine
L7_7 = L7_7(L8_8)
if L7_7 ~= nil then
  for L11_11, L12_12 in L8_8(L9_9) do
    if L12_12 ~= nil and L12_12 ~= "" and sysio.IsFileExists(L12_12) and not mp.IsKnownFriendlyFile(L12_12, false, false) then
      bm.add_related_file(L12_12)
    end
  end
end
return L8_8
