local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
function L0_0(A0_9, A1_10)
  local L2_11, L3_12, L4_13, L5_14, L6_15, L7_16, L8_17, L9_18, L10_19, L11_20
  if A0_9 ~= nil and A1_10 ~= nil then
    L2_11 = type
    L3_12 = A1_10
    L2_11 = L2_11(L3_12)
  elseif L2_11 ~= "table" then
    L2_11 = nil
    return L2_11
  end
  L2_11 = A0_9
  L3_12 = {}
  for L7_16, L8_17 in L4_13(L5_14) do
    L9_18 = 0
    L10_19 = bm
    L10_19 = L10_19.get_process_relationships
    L11_20 = L2_11
    L11_20 = L10_19(L11_20)
    for _FORV_15_, _FORV_16_ in ipairs(L11_20) do
      if mp.bitand(_FORV_16_.reason_ex, 1) == 1 and string.sub(_FORV_16_.image_path, -string.len(L8_17)) == L8_17 then
        L2_11 = _FORV_16_.ppid
        L9_18 = L9_18 + 1
      end
      if L9_18 > 1 then
        return nil
      end
    end
    if L9_18 == 0 then
      return nil
    end
    table.insert(L3_12, L2_11)
  end
  return L3_12
end
checkProcessTree = L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
elseif L1_1 < 8 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0
L4_4 = "([^\\]+)$"
L8_8 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3, L4_4))
L2_2 = {}
L2_2["winword.exe"] = true
L2_2["excel.exe"] = true
L2_2["powerpnt.exe"] = true
L3_3 = L2_2[L1_1]
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_current_process_startup_info
L3_3 = L3_3()
if L3_3 ~= nil then
  L4_4 = L3_3.ppid
elseif L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3.ppid
L5_5 = L3_3.command_line
L6_6 = {
  L7_7,
  L8_8,
  "powershell.exe"
}
L7_7 = "cmd.exe"
L8_8 = "cmd.exe"
L7_7 = checkProcessTree
L8_8 = L4_4
L7_7 = L7_7(L8_8, L6_6)
if L7_7 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
if L5_5 ~= nil then
  L8_8 = {}
  L8_8[".xls"] = true
  L8_8[".doc"] = true
  L8_8[".ppt"] = true
  L8_8[".pps"] = true
  L8_8.docx = true
  L8_8.pptx = true
  L8_8.ppsx = true
  L8_8.xlsx = true
  L8_8[".rtf"] = true
  L8_8[".xml"] = true
  L8_8.dotx = true
  L8_8.dotm = true
  L8_8[".odt"] = true
  L8_8.xlsb = true
  L8_8.xltx = true
  L8_8.xltm = true
  L8_8.xlam = true
  L8_8[".xla"] = true
  L8_8.docm = true
  L8_8.xlsm = true
  L8_8.pptm = true
  bm_AddRelatedFileFromCommandLine(L5_5, L8_8)
end
L8_8 = mp
L8_8 = L8_8.INFECTED
return L8_8
