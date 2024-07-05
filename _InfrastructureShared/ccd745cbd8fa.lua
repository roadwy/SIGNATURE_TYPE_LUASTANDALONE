local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == "" or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L1_1
L3_3 = L3_3(L4_4)
L4_4 = "bitsadmin.+%s+[\"]?(http[s]?:[^%s\"]+)[\"]?%s+"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == "" or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CheckUrl
L4_4 = L2_2
L4_4 = L3_3(L4_4)
if L3_3 == 1 and L4_4 == 1 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {}
L6_6 = table
L6_6 = L6_6.insert
L7_7 = L5_5
L8_8 = L2_2
L6_6(L7_7, L8_8)
L6_6 = {}
L6_6.SIG_CONTEXT = "CMD"
L6_6.CONTENT_SOURCE = "BITS"
L6_6.PROCESS_CONTEXT = "BITSADMIN.EXE"
L6_6.PARENT_CONTEXT = nil
L6_6.FILELESS = "true"
L6_6.CMDLINE_URL = "true"
L6_6.BREAK_AT_FIRST_HIT_MALWARE = "40"
L7_7 = mp
L7_7 = L7_7.GetUrlReputation
L8_8 = L5_5
L7_7 = L7_7(L8_8, L6_6)
if L7_7 ~= nil then
  L8_8 = L7_7.urls
  for _FORV_12_, _FORV_13_ in ipairs(L8_8) do
    if _FORV_13_.determination == 2 and _FORV_13_.confidence >= 60 then
      return mp.INFECTED
    end
  end
end
L8_8 = mp
L8_8 = L8_8.CLEAN
return L8_8
