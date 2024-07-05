local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = MpCommon
L1_1 = L1_1.GetPersistContextNoPath
L2_2 = "TemplateInjc"
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L0_0 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L0_0 = L2_2.utf8p2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L2_2 = L2_2.utf8p2
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[3]
          L0_0 = L2_2.utf8p2
        end
      end
    end
  end
  L2_2 = nil
  if L0_0 ~= nil then
    L4_4[".xls"] = true
    L4_4[".doc"] = true
    L4_4[".ppt"] = true
    L4_4[".pps"] = true
    L4_4.docx = true
    L4_4.pptx = true
    L4_4.ppsx = true
    L4_4.xlsx = true
    L4_4[".rtf"] = true
    L4_4[".xml"] = true
    L4_4.dotx = true
    L4_4.dotm = true
    L4_4[".odt"] = true
    L4_4.xlsb = true
    L4_4.xltx = true
    L4_4.xltm = true
    L4_4.xlam = true
    L4_4[".xla"] = true
    L4_4.docm = true
    L4_4.xlsm = true
    L4_4.pptm = true
    for L8_8, L9_9 in L5_5(L6_6) do
      if sysio.IsFileExists(L9_9) and L4_4[string.sub(L9_9, -4)] then
        L2_2 = L9_9
      end
    end
  end
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L2_2
    L8_8 = L8_8(L9_9, L7_7)
    if L8_8 then
      L8_8 = mp
      L8_8 = L8_8.INFECTED
      return L8_8
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
