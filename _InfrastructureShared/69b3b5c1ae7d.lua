local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    end
  end
end
L1_1 = {}
if L0_0 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
  L3_3 = {}
  L3_3[".xls"] = true
  L3_3[".doc"] = true
  L3_3[".ppt"] = true
  L3_3[".pps"] = true
  L3_3.docx = true
  L3_3.pptx = true
  L3_3.ppsx = true
  L3_3.xlsx = true
  L3_3[".rtf"] = true
  L3_3[".xml"] = true
  L3_3.dotx = true
  L3_3.dotm = true
  L3_3[".odt"] = true
  L3_3.xlsb = true
  L3_3.xltx = true
  L3_3.xltm = true
  L3_3.xlam = true
  L3_3[".xla"] = true
  L3_3.docm = true
  L3_3.xlsm = true
  L3_3.pptm = true
  for L7_7, L8_8 in L4_4(L5_5) do
    if string.len(L8_8) > 4 and sysio.IsFileExists(L8_8) and L3_3[string.sub(L8_8, -4)] then
      bm.add_related_file(L8_8)
      table.insert(L1_1, L8_8)
    end
  end
end
L2_2 = MpCommon
L2_2 = L2_2.SetPersistContextNoPath
L3_3 = "OfficeWmiProc"
L2_2(L3_3, L4_4, L5_5)
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
