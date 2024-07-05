local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = 900000000
L1_1 = bm
L1_1 = L1_1.GetSignatureMatchDuration
L1_1 = L1_1()
if L0_0 < L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 == nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    if L2_2 <= 4 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 == nil then
    L3_3 = string
    L3_3 = L3_3.len
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    if L3_3 <= 4 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
  L3_3 = {}
  L3_3["winword.exe"] = true
  L3_3["excel.exe"] = true
  L3_3["powerpnt.exe"] = true
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = string
  L5_5 = L5_5.match
  L6_6 = L1_1
  L7_7 = "([^\\]-[^\\%.]+)$"
  L9_9 = L5_5(L6_6, L7_7)
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L5_5(L6_6, L7_7))
  if L4_4 == nil then
    L5_5 = string
    L5_5 = L5_5.len
    L6_6 = L4_4
    L5_5 = L5_5(L6_6)
    if L5_5 <= 4 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
  end
  L5_5 = L3_3[L4_4]
  if L5_5 then
    L5_5 = nil
    L6_6 = this_sigattrlog
    L6_6 = L6_6[5]
    L6_6 = L6_6.matched
    if L6_6 then
      L6_6 = this_sigattrlog
      L6_6 = L6_6[5]
      L5_5 = L6_6.utf8p1
    end
    if L5_5 == nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = nil
    L7_7 = this_sigattrlog
    L7_7 = L7_7[6]
    L7_7 = L7_7.matched
    if L7_7 then
      L7_7 = this_sigattrlog
      L7_7 = L7_7[6]
      L6_6 = L7_7.utf8p2
    end
    if L6_6 == nil then
      L7_7 = mp
      L7_7 = L7_7.CLEAN
      return L7_7
    end
    L7_7 = string
    L7_7 = L7_7.lower
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L5_5
    L9_9 = L8_8(L9_9, "([^\\]-[^\\%.]+)$")
    L7_7 = L7_7(L8_8, L9_9, L8_8(L9_9, "([^\\]-[^\\%.]+)$"))
    L8_8 = string
    L8_8 = L8_8.find
    L9_9 = string
    L9_9 = L9_9.lower
    L9_9 = L9_9(L6_6)
    L8_8 = L8_8(L9_9, L7_7, 1, true)
    if not L8_8 then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
    L8_8 = "|.xls|.doc|.ppt|.pps|docx|pptx|ppsx|xlsx|.rtf|.js|.vbs|.wsf|.jse|.vbe|"
    L9_9 = bm_AddRelatedFileFromCommandLine
    L9_9(L2_2, L8_8)
    L9_9 = this_sigattrlog
    L9_9 = L9_9[4]
    L9_9 = L9_9.matched
    if L9_9 then
      L9_9 = this_sigattrlog
      L9_9 = L9_9[4]
      L9_9 = L9_9.utf8p2
      bm_AddRelatedFileFromCommandLine(L9_9, L8_8)
    end
    L9_9 = mp
    L9_9 = L9_9.INFECTED
    return L9_9
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
