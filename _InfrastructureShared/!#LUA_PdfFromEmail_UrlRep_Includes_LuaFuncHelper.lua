local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = split
L2_2 = tostring
L2_2 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3)
L2_2 = {}
for L6_6, L7_7 in L3_3(L4_4) do
  if MpCommon.StringRegExpSearch("^(?:(?:https?|ftp):\\/\\/)?[\\w\\-]+(?:\\.[\\w\\-]+)+", string.lower(L7_7)) == true and #L7_7 > 5 then
    table.insert(L2_2, L7_7)
  end
end
L3_3.SIG_CONTEXT = "LuaGen"
L3_3.CONTENT_SOURCE = "PDF"
L3_3.FILELESS = "false"
L3_3.CMDLINE_URL = "false"
L3_3.BREAK_AT_FIRST_HIT_MALWARE = "60"
L3_3.BREAK_AT_FIRST_HIT_PHISH = "60"
L3_3.BREAK_AT_FIRST_HIT_CLEAN = "60"
L3_3.TAG = "Email"
L6_6 = L3_3
L7_7 = 60
if L4_4 == true then
  return L5_5
end
return L5_5
