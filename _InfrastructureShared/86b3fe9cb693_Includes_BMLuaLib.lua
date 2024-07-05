local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
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
  L16_16 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L4_4(L5_5, L6_6))
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
    for L14_14, L15_15 in L11_11(L12_12) do
      L16_16 = L15_15.image_path
      if string.len(L16_16) > 8 and string.sub(L16_16, -8) == "\\cmd.exe" then
        if mp.bitand(L15_15.reason_ex, 1) == 1 then
          L8_8 = true
        elseif mp.bitand(L15_15.reason_ex, 1) ~= 1 then
          L9_9 = true
        end
      end
      if mp.bitand(L15_15.reason_ex, 1) ~= 1 and string.len(L16_16) > 15 and string.sub(L16_16, -15) == "\\powershell.exe" then
        L10_10 = true
      end
    end
    if L8_8 == false or L9_9 == false or L10_10 == false then
      return L11_11
    end
    L11_11[".xls"] = true
    L11_11[".doc"] = true
    L11_11[".ppt"] = true
    L11_11[".pps"] = true
    L11_11.docx = true
    L11_11.pptx = true
    L11_11.ppsx = true
    L11_11.xlsx = true
    L11_11[".rtf"] = true
    L11_11[".xml"] = true
    L11_11.dotx = true
    L11_11.dotm = true
    L11_11[".odt"] = true
    L11_11.xlsb = true
    L11_11.xltx = true
    L11_11.xltm = true
    L11_11.xlam = true
    L11_11[".xla"] = true
    L11_11.docm = true
    L11_11.xlsm = true
    L11_11.pptm = true
    L14_14 = L11_11
    L12_12(L13_13, L14_14)
    return L12_12
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
