local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
if L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 1
L2_2 = 128
L3_3 = ""
L4_4 = L0_0.is_header
if L4_4 then
  L4_4 = L1_1 + L2_2
  L5_5 = mp
  L5_5 = L5_5.HEADERPAGE_SZ
  if L4_4 >= L5_5 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.readheader
  L5_5 = L1_1
  L6_6 = L2_2
  L4_4 = L4_4(L5_5, L6_6)
  L3_3 = L4_4
else
  L4_4 = L1_1 + L2_2
  L5_5 = mp
  L5_5 = L5_5.FOOTERPAGE_SZ
  if L4_4 >= L5_5 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.readfooter
  L5_5 = L1_1
  L6_6 = L2_2
  L4_4 = L4_4(L5_5, L6_6)
  L3_3 = L4_4
end
if L3_3 ~= "" then
  L5_5 = L3_3
  L4_4 = L3_3.find
  L6_6 = ">"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 ~= nil then
    L6_6 = L3_3
    L5_5 = L3_3.sub
    L7_7 = L4_4 + 1
    L8_8 = L2_2 - 1
    L5_5 = L5_5(L6_6, L7_7, L8_8)
    L3_3 = L5_5
    L6_6 = L3_3
    L5_5 = L3_3.find
    L7_7 = "<"
    L8_8 = 1
    L6_6 = L5_5(L6_6, L7_7, L8_8, true)
    if L6_6 ~= nil then
      L8_8 = L3_3
      L7_7 = L3_3.sub
      L7_7 = L7_7(L8_8, 1, L6_6 - 1)
      if L7_7 == nil then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
      L8_8 = string
      L8_8 = L8_8.len
      L8_8 = L8_8(L7_7)
      if L8_8 == 0 then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
      L8_8 = MpCommon
      L8_8 = L8_8.Base64Encode
      L8_8 = L8_8(L7_7)
      set_research_data("OFFCR:", L8_8, false)
      return mp.INFECTED
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
