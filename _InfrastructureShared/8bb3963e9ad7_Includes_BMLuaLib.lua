local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
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
  L18_18 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L4_4(L5_5, L6_6))
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
      L18_18 = mp
      L18_18 = L18_18.bitand
      L18_18 = L18_18(L16_16.reason_ex, 1)
      if string.len(L17_17) > 8 and string.sub(L17_17, -8) == "\\cmd.exe" and L18_18 == 1 then
        L8_8 = true
      end
      if string.len(L17_17) > 12 and L11_11[string.sub(L17_17, -12)] and L18_18 ~= 1 then
        L9_9 = true
      end
      if string.len(L17_17) > 15 and string.sub(L17_17, -15) == "\\powershell.exe" and L18_18 ~= 1 then
        L10_10 = true
      end
    end
    if L8_8 == false or L9_9 == false or L10_10 == false then
      return L12_12
    end
    L15_15 = L12_12
    L15_15 = L14_14(L15_15)
    L16_16 = #L15_15
    if L16_16 ~= 1 then
      L16_16 = mp
      L16_16 = L16_16.CLEAN
      return L16_16
    end
    L16_16 = L15_15[1]
    L16_16 = L16_16.ppid
    if L16_16 ~= L13_13 then
      L16_16 = mp
      L16_16 = L16_16.CLEAN
      return L16_16
    end
    L16_16 = {}
    L16_16[".xls"] = true
    L16_16[".doc"] = true
    L16_16[".ppt"] = true
    L16_16[".pps"] = true
    L16_16.docx = true
    L16_16.pptx = true
    L16_16.ppsx = true
    L16_16.xlsx = true
    L16_16[".rtf"] = true
    L16_16[".xml"] = true
    L16_16.dotx = true
    L16_16.dotm = true
    L16_16[".odt"] = true
    L16_16.xlsb = true
    L16_16.xltx = true
    L16_16.xltm = true
    L16_16.xlam = true
    L16_16[".xla"] = true
    L16_16.docm = true
    L16_16.xlsm = true
    L16_16.pptm = true
    L17_17 = bm_AddRelatedFileFromCommandLine
    L18_18 = L1_1
    L17_17(L18_18, L16_16)
    L17_17 = {}
    L17_17[".js"] = true
    L17_17.vbs = true
    L17_17.wsf = true
    L17_17.jse = true
    L17_17.vbe = true
    L18_18 = this_sigattrlog
    L18_18 = L18_18[3]
    L18_18 = L18_18.utf8p2
    bm_AddRelatedFileFromCommandLine(L18_18, L17_17, 3)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
