local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
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
  L6_6 = "([^\\]-[^\\%.]+)$"
  L17_17 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L4_4(L5_5, L6_6))
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
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.ppid
    L5_5 = this_sigattrlog
    L5_5 = L5_5[2]
    L5_5 = L5_5.ppid
    if L4_4 ~= L5_5 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = bm
    L6_6 = L6_6.get_process_relationships
    L7_7 = L4_4
    L7_7 = L6_6(L7_7)
    L8_8 = #L7_7
    if L8_8 ~= 3 then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
    L8_8 = false
    L9_9 = false
    L10_10 = false
    L11_11 = {}
    L11_11["\\wscript.exe"] = true
    L11_11["\\cscript.exe"] = true
    for L15_15, L16_16 in L12_12(L13_13) do
      L17_17 = L16_16.image_path
      if string.len(L17_17) > 8 and string.sub(L17_17, -8) == "\\cmd.exe" and mp.bitand(L16_16.reason_ex, 1) == 1 then
        L8_8 = true
      end
      if string.len(L17_17) > 12 and L11_11[string.sub(L17_17, -12)] and mp.bitand(L16_16.reason_ex, 1) ~= 2 then
        L9_9 = true
      end
      if string.len(L17_17) > 15 and string.sub(L17_17, -15) == "\\powershell.exe" and mp.bitand(L16_16.reason_ex, 1) ~= 2 then
        L10_10 = true
      end
    end
    if L8_8 == false or L9_9 == false or L10_10 == false then
      return L12_12
    end
    L12_12[".xls"] = true
    L12_12[".doc"] = true
    L12_12[".ppt"] = true
    L12_12[".pps"] = true
    L12_12.docx = true
    L12_12.pptx = true
    L12_12.ppsx = true
    L12_12.xlsx = true
    L12_12[".rtf"] = true
    L12_12[".xml"] = true
    L12_12.dotx = true
    L12_12.dotm = true
    L12_12[".odt"] = true
    L12_12.xlsb = true
    L12_12.xltx = true
    L12_12.xltm = true
    L12_12.xlam = true
    L12_12[".xla"] = true
    L12_12.docm = true
    L12_12.xlsm = true
    L12_12.pptm = true
    L15_15 = L12_12
    L13_13(L14_14, L15_15)
    L13_13[".js"] = true
    L13_13.vbs = true
    L13_13.wsf = true
    L13_13.jse = true
    L13_13.vbe = true
    L15_15 = bm_AddRelatedFileFromCommandLine
    L16_16 = L14_14
    L17_17 = L13_13
    L15_15(L16_16, L17_17, 3)
    L15_15 = mp
    L15_15 = L15_15.INFECTED
    return L15_15
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
