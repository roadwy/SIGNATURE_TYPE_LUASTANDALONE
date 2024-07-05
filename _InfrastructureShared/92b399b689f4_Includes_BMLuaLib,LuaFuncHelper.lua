local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = pcall
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.utf8p1
L1_1 = L0_0(L1_1, L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "\\([^\\]+)$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3[L1_1] = 1
L4_4 = {}
L5_5 = table
L5_5 = L5_5.insert
L6_6 = L4_4
L5_5(L6_6, {NotePath = L1_1, NoteName = L2_2})
L5_5 = ""
L6_6 = ""
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  L0_0, L5_5 = pcall(MpCommon.PathToWin32Path, this_sigattrlog[3].utf8p1)
  L5_5 = string.lower(L5_5)
  if L5_5 ~= nil and L5_5 ~= "" then
    L6_6 = string.match(L5_5, "\\([^\\]+)$")
    if L6_6 ~= nil and L6_6 ~= "" and L3_3[L5_5] ~= 1 and L2_2 == L6_6 then
      L3_3[L5_5] = 1
      table.insert(L4_4, {NotePath = L5_5, NoteName = L6_6})
    end
  end
end
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L0_0, L5_5 = pcall(MpCommon.PathToWin32Path, this_sigattrlog[4].utf8p1)
  L5_5 = string.lower(L5_5)
  if L5_5 ~= nil and L5_5 ~= "" then
    L6_6 = string.match(L5_5, "\\([^\\]+)$")
    if L6_6 ~= nil and L6_6 ~= "" and L3_3[L5_5] ~= 1 and L2_2 == L6_6 then
      L3_3[L5_5] = 1
      table.insert(L4_4, {NotePath = L5_5, NoteName = L6_6})
    end
  end
end
if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil then
  L0_0, L5_5 = pcall(MpCommon.PathToWin32Path, this_sigattrlog[5].utf8p1)
  L5_5 = string.lower(L5_5)
  if L5_5 ~= nil and L5_5 ~= "" then
    L6_6 = string.match(L5_5, "\\([^\\]+)$")
    if L6_6 ~= nil and L6_6 ~= "" and L3_3[L5_5] ~= 1 and L2_2 == L6_6 then
      L3_3[L5_5] = 1
      table.insert(L4_4, {NotePath = L5_5, NoteName = L6_6})
    end
  end
end
if 0 + 1 + 1 + 1 == 3 then
  bm.add_related_string("RansomHaltZ", safeJsonSerialize(L4_4), bm.RelatedStringBMReport)
  extractRansomNote(L1_1)
  return mp.INFECTED
end
return mp.CLEAN
