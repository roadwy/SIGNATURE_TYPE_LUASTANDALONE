local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.lower
L1_1 = L1_1(L2_2)
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "svchost"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2()
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.lower
L3_3 = L3_3(L4_4)
L4_4 = "^\\device\\mup\\.+\\sysvol\\.+\\policies\\{(%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x)}\\gpt.ini$"
L6_6 = L3_3
L5_5 = L3_3.match
L7_7 = L4_4
L5_5 = L5_5(L6_6, L7_7)
if not L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = tostring
L7_7 = headerpage
L6_6 = L6_6(L7_7)
if not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L8_8 = L6_6
L7_7 = L6_6.match
L9_9 = "Version%s*=%s*(%d+)"
L7_7 = L7_7(L8_8, L9_9)
if not L7_7 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L9_9 = "Lua:GptIniMissingVersion"
  L8_8(L9_9)
  L8_8 = mp
  L8_8 = L8_8.INFECTED
  return L8_8
end
L8_8 = pcall
L9_9 = MpCommon
L9_9 = L9_9.RollingQueueQueryKey
L10_10 = "gpo_block"
L11_11 = L5_5
L9_9 = L8_8(L9_9, L10_10, L11_11)
if L8_8 and L9_9 then
  L10_10 = mp
  L10_10 = L10_10.INFECTED
  return L10_10
end
L10_10 = pcall
L11_11 = MpCommon
L11_11 = L11_11.RollingQueueQueryKey
L12_12 = "gpo_applied"
L11_11 = L10_10(L11_11, L12_12, L5_5)
if L10_10 and L11_11 then
  L12_12 = L11_11.value
  if L12_12 then
    L12_12 = L11_11.value
    if L12_12 == L7_7 then
      L12_12 = mp
      L12_12 = L12_12.CLEAN
      return L12_12
    end
  end
end
L12_12 = tonumber
L12_12 = L12_12(L7_7)
mp.set_mpattributeex("Lua:GPOVersion", L12_12)
mp.set_mpattribute("Lua:GPOBlockerFilter")
return mp.CLEAN
