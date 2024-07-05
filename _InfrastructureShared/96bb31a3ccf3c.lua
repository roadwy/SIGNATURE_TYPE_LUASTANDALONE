local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L5_5 = {}
L6_6, L7_7, L8_8, L9_9, L10_10 = nil, nil, nil, nil, nil
L11_11 = {}
L11_11[".gif"] = true
L11_11[".pdf"] = true
L11_11[".doc"] = true
L11_11[".docx"] = true
L11_11[".docm"] = true
L11_11[".xls"] = true
L11_11[".xlsx"] = true
L11_11[".xlsm"] = true
L11_11[".ppt"] = true
L11_11[".pptx"] = true
L11_11[".pptm"] = true
L11_11[".rtf"] = true
L11_11[".zip"] = true
L11_11[".rar"] = true
L11_11[".cab"] = true
L11_11[".jpg"] = true
L11_11[".jpeg"] = true
L11_11[".bmp"] = true
L11_11[".png"] = true
L11_11[".jpe"] = true
L11_11[".xml"] = true
L11_11[".wer"] = true
L11_11[".dat"] = true
if this_sigattrlog[26].matched and this_sigattrlog[26].wp1 ~= nil then
  L0_0 = this_sigattrlog[26].utf8p1
  table.insert(L5_5, this_sigattrlog[26].timestamp)
  L6_6 = string.lower(string.sub(L0_0, -5)):match("(%.%a+)$")
  if L11_11[L6_6] then
    return mp.CLEAN
  end
end
if this_sigattrlog[48].matched and this_sigattrlog[48].wp1 ~= nil then
  L1_1 = this_sigattrlog[48].utf8p1
  table.insert(L5_5, this_sigattrlog[48].timestamp)
  L7_7 = string.lower(string.sub(L1_1, -5)):match("(%.%a+)$")
  if L11_11[L7_7] then
    return mp.CLEAN
  end
end
if this_sigattrlog[70].matched and this_sigattrlog[70].wp1 ~= nil then
  L2_2 = this_sigattrlog[70].utf8p1
  table.insert(L5_5, this_sigattrlog[70].timestamp)
  L8_8 = string.lower(string.sub(L2_2, -5)):match("(%.%a+)$")
  if L11_11[L8_8] then
    return mp.CLEAN
  end
end
if this_sigattrlog[92].matched and this_sigattrlog[92].wp1 ~= nil then
  L3_3 = this_sigattrlog[92].utf8p1
  table.insert(L5_5, this_sigattrlog[92].timestamp)
  L9_9 = string.lower(string.sub(L3_3, -5)):match("(%.%a+)$")
  if L11_11[L9_9] then
    return mp.CLEAN
  end
end
if this_sigattrlog[114].matched and this_sigattrlog[114].wp1 ~= nil then
  L4_4 = this_sigattrlog[114].utf8p1
  table.insert(L5_5, this_sigattrlog[114].timestamp)
  L10_10 = string.lower(string.sub(L4_4, -5)):match("(%.%a+)$")
  if L11_11[L10_10] then
    return mp.CLEAN
  end
end
if L6_6 ~= nil and L6_6 == L7_7 and L6_6 == L8_8 and L6_6 == L9_9 and L6_6 == L10_10 then
  table.sort(L5_5)
  if L5_5[#L5_5] - L5_5[1] < 5000000 then
    if mp.get_sigattr_event_count(16386) < 10 then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
return mp.CLEAN
