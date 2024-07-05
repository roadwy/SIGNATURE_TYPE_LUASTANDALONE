local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "PFAppTracked"
L2_2 = MpCommon
L2_2 = L2_2.GetProcessAttributeValue
L3_3 = L0_0
L4_4 = "PFAppTracked"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = MpCommon
  L2_2 = L2_2.GetProcessAttributeValue
  L3_3 = L0_0
  L4_4 = "inherit:PFAppTracked"
  L2_2 = L2_2(L3_3, L4_4)
end
if not L2_2 then
  L3_3 = MpCommon
  L3_3 = L3_3.GetProcessAttributeValue
  L4_4 = L0_0
  L5_5 = "PFApp_Parent"
  L3_3 = L3_3(L4_4, L5_5)
  L2_2 = L3_3 or L3_3
  L1_1 = "PFApp_Parent"
end
L3_3 = safeJsonDeserialize
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4.ProcessAttribute = L3_3
L5_5 = mp
L5_5 = L5_5.enum_mpattributesubstring
L6_6 = ""
L5_5 = L5_5(L6_6)
if L5_5 then
  L6_6 = #L5_5
  if L6_6 > 0 then
    L6_6 = {}
    for L10_10, L11_11 in L7_7(L8_8) do
      if MpCommon.StringRegExpSearch("((alf:|slf:|tel:|detection:).*(webshell|shellcode|shellexecute|downloader|exploit|backdoor))", string.lower(L11_11)) and #L6_6 < 15 then
        table.insert(L6_6, L11_11)
      end
    end
    L10_10 = "|"
    L4_4.FileAttributes = L7_7
    L10_10 = safeJsonSerialize
    L11_11 = L4_4
    L11_11 = L10_10(L11_11)
    L7_7(L8_8)
    if L7_7 > 0 then
      L10_10 = "]"
      L10_10 = #L6_6
      L10_10 = L10_10 * 5
      L11_11 = L7_7
      L8_8(L9_9, L10_10, L11_11, L1_1)
      return L8_8
    end
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
