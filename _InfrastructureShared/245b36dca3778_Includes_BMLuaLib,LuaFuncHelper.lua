local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = MpCommon
L0_0 = L0_0.NidSearch
L1_1 = mp
L1_1 = L1_1.NID_ENABLE_EXTENDED_BAFS
L2_2 = 6
L0_0 = L0_0(L1_1, L2_2)
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.add_related_string
  L1_1 = "AdditionalInfo"
  L2_2 = "E5EmergencyAntiTampering"
  L3_3 = bm
  L3_3 = L3_3.RelatedStringBMReport
  L0_0(L1_1, L2_2, L3_3)
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = {
  L1_1,
  L2_2,
  L3_3
}
L1_1 = {L2_2, L3_3}
L2_2 = "wttsvc.exe"
L3_3 = ""
L2_2 = {L3_3, L4_4}
L3_3 = "TeamViewer"
L4_4 = ""
L3_3 = {L4_4, L5_5}
L4_4 = "UEMS_Agent"
L5_5 = ""
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 then
  L2_2 = L1_1.ppid
elseif not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = checkParentCmdlineCaseInsensitive
L3_3 = L1_1.ppid
L4_4 = L0_0
L5_5 = 4
L4_4 = L2_2(L3_3, L4_4, L5_5)
if L2_2 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {L6_6, L7_7}
L6_6 = "bcdedit.exe"
L6_6 = bm
L6_6 = L6_6.get_imagepath
L6_6 = L6_6()
L6_6 = L6_6.match
L6_6 = L6_6(L7_7, L8_8)
if not L6_6 then
  return L7_7
end
L6_6 = L7_7
for L10_10, L11_11 in L7_7(L8_8) do
  L12_12 = string
  L12_12 = L12_12.find
  L13_13 = L6_6
  L12_12 = L12_12(L13_13, L14_14)
  if L12_12 then
    L12_12 = add_parents
    L12_12 = L12_12()
    L13_13 = {}
    for L17_17, L18_18 in L14_14(L15_15) do
      L19_19 = L18_18.match
      L19_19 = L19_19(L18_18, "([^\\]+)$")
      table.insert(L13_13, L19_19)
    end
    if L14_14 then
      for L18_18, L19_19 in L15_15(L16_16) do
        if contains(L19_19, L13_13) then
          bm.add_related_string("RegisteredSrv", L19_19, bm.RelatedStringBMReport)
          break
        end
      end
    end
    if L15_15 then
      if L16_16 then
        L18_18 = "true"
        L19_19 = bm
        L19_19 = L19_19.RelatedStringBMReport
        L16_16(L17_17, L18_18, L19_19)
        L18_18 = safeJsonSerialize
        L19_19 = L15_15
        L18_18 = L18_18(L19_19)
        L19_19 = bm
        L19_19 = L19_19.RelatedStringBMReport
        L16_16(L17_17, L18_18, L19_19)
      end
    end
    return L16_16
  end
end
return L7_7
