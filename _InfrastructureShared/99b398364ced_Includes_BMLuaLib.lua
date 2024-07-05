local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6)
  local L2_7, L3_8, L4_9, L5_10, L6_11, L7_12, L8_13, L9_14, L10_15, L11_16
  if A0_5 ~= nil and A1_6 ~= nil then
    L2_7 = type
    L3_8 = A1_6
    L2_7 = L2_7(L3_8)
  elseif L2_7 ~= "table" then
    L2_7 = nil
    return L2_7
  end
  L2_7 = A0_5
  L3_8 = {}
  for L7_12, L8_13 in L4_9(L5_10) do
    L9_14 = 0
    L10_15 = bm
    L10_15 = L10_15.get_process_relationships
    L11_16 = L2_7
    L11_16 = L10_15(L11_16)
    for _FORV_15_, _FORV_16_ in ipairs(L11_16) do
      if mp.bitand(_FORV_16_.reason_ex, 1) == 1 and string.sub(_FORV_16_.image_path, -string.len(L8_13)) == L8_13 then
        L2_7 = _FORV_16_.ppid
        L9_14 = L9_14 + 1
      end
      if L9_14 > 1 then
        return nil
      end
    end
    if L9_14 == 0 then
      return nil
    end
    table.insert(L3_8, L2_7)
  end
  return L3_8
end
checkProcessTree = L0_0
L0_0, L1_1 = nil, nil
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
    L0_0 = L2_2.ppid
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p2
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
      L0_0 = L2_2.ppid
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L1_1 = L2_2.utf8p2
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
        L0_0 = L2_2.ppid
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L1_1 = L2_2.utf8p2
      end
    end
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {L3_3, L4_4}
L3_3 = "cmd.exe"
L4_4 = "powershell.exe"
L3_3 = checkProcessTree
L4_4 = L0_0
L3_3 = L3_3(L4_4, L2_2)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L1_1 ~= nil then
  L4_4 = {}
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
  bm_AddRelatedFileFromCommandLine(L1_1, L4_4)
end
L4_4 = mp
L4_4 = L4_4.INFECTED
return L4_4
