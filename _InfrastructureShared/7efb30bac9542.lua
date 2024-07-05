local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L1_1 = "Behavior:Win32/BlockMpTamper"
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = "Behavior:Win32/ShadowCopyDelete"
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.enum_mpattributesubstring
L3_3 = "Behavior:Win32/RunsBcdedit"
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.enum_mpattributesubstring
L4_4 = "Behavior:Win32/StartupRepair"
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.enum_mpattributesubstring
L5_5 = "Behavior:Win32/FsutilUsnDeleteJournal"
L4_4 = L4_4(L5_5)
L5_5 = #L2_2
if L5_5 == 0 then
  L5_5 = #L3_3
  if L5_5 == 0 then
    L5_5 = #L4_4
    if L5_5 == 0 then
      L5_5 = #L0_0
      if L5_5 == 0 then
        L5_5 = #L1_1
        if L5_5 == 0 then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
      end
    end
  end
end
L5_5, L6_6, L7_7, L8_8, L9_9 = nil, nil, nil, nil, nil
L10_10 = {}
L11_11, L12_12, L13_13, L14_14, L15_15 = nil, nil, nil, nil, nil
if this_sigattrlog[7].matched and this_sigattrlog[7].wp1 ~= nil then
  L5_5 = this_sigattrlog[7].utf8p1
  table.insert(L10_10, this_sigattrlog[7].timestamp)
  L11_11 = string.lower(string.sub(L5_5, -5)):match("(%.%a+)$")
  if ({
    [".gif"] = true,
    [".pdf"] = true,
    [".doc"] = true,
    [".docx"] = true,
    [".docm"] = true,
    [".xls"] = true,
    [".xlsx"] = true,
    [".xlsm"] = true,
    [".ppt"] = true,
    [".pptx"] = true,
    [".pptm"] = true,
    [".rtf"] = true,
    [".zip"] = true,
    [".rar"] = true,
    [".cab"] = true,
    [".jpg"] = true,
    [".jpeg"] = true,
    [".bmp"] = true,
    [".png"] = true,
    [".jpe"] = true,
    [".xml"] = true,
    [".wer"] = true,
    [".dat"] = true,
    [".tmp"] = true
  })[L11_11] then
    return mp.CLEAN
  end
end
if this_sigattrlog[25].matched and this_sigattrlog[25].wp1 ~= nil then
  L6_6 = this_sigattrlog[25].utf8p1
  table.insert(L10_10, this_sigattrlog[25].timestamp)
  L12_12 = string.lower(string.sub(L6_6, -5)):match("(%.%a+)$")
  if ({
    [".gif"] = true,
    [".pdf"] = true,
    [".doc"] = true,
    [".docx"] = true,
    [".docm"] = true,
    [".xls"] = true,
    [".xlsx"] = true,
    [".xlsm"] = true,
    [".ppt"] = true,
    [".pptx"] = true,
    [".pptm"] = true,
    [".rtf"] = true,
    [".zip"] = true,
    [".rar"] = true,
    [".cab"] = true,
    [".jpg"] = true,
    [".jpeg"] = true,
    [".bmp"] = true,
    [".png"] = true,
    [".jpe"] = true,
    [".xml"] = true,
    [".wer"] = true,
    [".dat"] = true,
    [".tmp"] = true
  })[L12_12] then
    return mp.CLEAN
  end
end
if this_sigattrlog[43].matched and this_sigattrlog[43].wp1 ~= nil then
  L7_7 = this_sigattrlog[43].utf8p1
  table.insert(L10_10, this_sigattrlog[43].timestamp)
  L13_13 = string.lower(string.sub(L7_7, -5)):match("(%.%a+)$")
  if ({
    [".gif"] = true,
    [".pdf"] = true,
    [".doc"] = true,
    [".docx"] = true,
    [".docm"] = true,
    [".xls"] = true,
    [".xlsx"] = true,
    [".xlsm"] = true,
    [".ppt"] = true,
    [".pptx"] = true,
    [".pptm"] = true,
    [".rtf"] = true,
    [".zip"] = true,
    [".rar"] = true,
    [".cab"] = true,
    [".jpg"] = true,
    [".jpeg"] = true,
    [".bmp"] = true,
    [".png"] = true,
    [".jpe"] = true,
    [".xml"] = true,
    [".wer"] = true,
    [".dat"] = true,
    [".tmp"] = true
  })[L13_13] then
    return mp.CLEAN
  end
end
if this_sigattrlog[61].matched and this_sigattrlog[61].wp1 ~= nil then
  L8_8 = this_sigattrlog[61].utf8p1
  table.insert(L10_10, this_sigattrlog[61].timestamp)
  L14_14 = string.lower(string.sub(L8_8, -5)):match("(%.%a+)$")
  if ({
    [".gif"] = true,
    [".pdf"] = true,
    [".doc"] = true,
    [".docx"] = true,
    [".docm"] = true,
    [".xls"] = true,
    [".xlsx"] = true,
    [".xlsm"] = true,
    [".ppt"] = true,
    [".pptx"] = true,
    [".pptm"] = true,
    [".rtf"] = true,
    [".zip"] = true,
    [".rar"] = true,
    [".cab"] = true,
    [".jpg"] = true,
    [".jpeg"] = true,
    [".bmp"] = true,
    [".png"] = true,
    [".jpe"] = true,
    [".xml"] = true,
    [".wer"] = true,
    [".dat"] = true,
    [".tmp"] = true
  })[L14_14] then
    return mp.CLEAN
  end
end
if this_sigattrlog[79].matched and this_sigattrlog[79].wp1 ~= nil then
  L9_9 = this_sigattrlog[79].utf8p1
  table.insert(L10_10, this_sigattrlog[79].timestamp)
  L15_15 = string.lower(string.sub(L9_9, -5)):match("(%.%a+)$")
  if ({
    [".gif"] = true,
    [".pdf"] = true,
    [".doc"] = true,
    [".docx"] = true,
    [".docm"] = true,
    [".xls"] = true,
    [".xlsx"] = true,
    [".xlsm"] = true,
    [".ppt"] = true,
    [".pptx"] = true,
    [".pptm"] = true,
    [".rtf"] = true,
    [".zip"] = true,
    [".rar"] = true,
    [".cab"] = true,
    [".jpg"] = true,
    [".jpeg"] = true,
    [".bmp"] = true,
    [".png"] = true,
    [".jpe"] = true,
    [".xml"] = true,
    [".wer"] = true,
    [".dat"] = true,
    [".tmp"] = true
  })[L15_15] then
    return mp.CLEAN
  end
end
if L11_11 ~= nil and L11_11 == L12_12 and L11_11 == L13_13 and L11_11 == L14_14 and L11_11 == L15_15 then
  table.sort(L10_10)
  if L10_10[#L10_10] - L10_10[1] < 5000000 then
    if mp.get_sigattr_event_count(16387) < 10 then
      return mp.CLEAN
    end
    if mp.get_sigattr_event_count(16384) < 20 then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
return mp.CLEAN
