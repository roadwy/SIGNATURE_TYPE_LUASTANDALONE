local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 == nil then
    L1_1 = string
    L1_1 = L1_1.len
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 <= 4 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
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
  L2_2 = {}
  L2_2["winword.exe"] = true
  L2_2["excel.exe"] = true
  L2_2["powerpnt.exe"] = true
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = string
  L4_4 = L4_4.match
  L5_5 = L0_0
  L5_5 = L4_4(L5_5, "([^\\]-[^\\%.]+)$")
  L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5, "([^\\]-[^\\%.]+)$"))
  if L3_3 == nil then
    L4_4 = string
    L4_4 = L4_4.len
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    if L4_4 <= 4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  L4_4 = L2_2[L3_3]
  if L4_4 then
    L4_4 = "|.xls|.doc|.ppt|.pps|docx|pptx|ppsx|xlsx|.rtf|.js|.vbs|.wsf|.jse|.vbe|"
    L5_5 = bm_AddRelatedFileFromCommandLine
    L5_5(L1_1, L4_4)
    L5_5 = this_sigattrlog
    L5_5 = L5_5[4]
    L5_5 = L5_5.matched
    if L5_5 then
      L5_5 = this_sigattrlog
      L5_5 = L5_5[4]
      L5_5 = L5_5.utf8p2
      bm_AddRelatedFileFromCommandLine(L5_5, L4_4)
    end
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
