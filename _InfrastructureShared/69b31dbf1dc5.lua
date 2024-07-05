local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
function L0_0(A0_12, A1_13)
  local L2_14, L3_15, L4_16, L5_17
  if A0_12 == nil then
    L2_14 = nil
    return L2_14
  end
  L2_14 = true
  L3_15 = 0
  if A1_13 == nil then
    L4_16 = string
    L4_16 = L4_16.len
    L5_17 = A1_13
    L4_16 = L4_16(L5_17)
  elseif L4_16 > 0 then
    L2_14 = false
    L4_16 = string
    L4_16 = L4_16.len
    L5_17 = A1_13
    L4_16 = L4_16(L5_17)
    L3_15 = L4_16
  end
  L4_16 = bm
  L4_16 = L4_16.get_process_relationships
  L5_17 = A0_12
  L5_17 = L4_16(L5_17)
  if L5_17 == nil or #L5_17 < 1 or #L5_17 > 4 then
    return nil
  end
  for _FORV_10_, _FORV_11_ in ipairs(L5_17) do
    if mp.bitand(_FORV_11_.reason_ex, 1) == 1 and (L2_14 == true or L3_15 < string.len(_FORV_11_.image_path) and string.sub(_FORV_11_.image_path, -L3_15) == A1_13) then
      break
    end
  end
  return _FORV_11_.ppid
end
getFirstChildPpid = L0_0
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
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = getFirstChildPpid
L3_3 = L0_0
L4_4 = "\\cmd.exe"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = getFirstChildPpid
L4_4 = L2_2
L5_5 = "\\cmd.exe"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = getFirstChildPpid
L5_5 = L3_3
L6_6 = "\\certutil.exe"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.GetExecutablesFromCommandLine
L6_6 = L1_1
L5_5 = L5_5(L6_6)
L6_6 = {}
L6_6[".xls"] = true
L6_6[".doc"] = true
L6_6[".ppt"] = true
L6_6[".pps"] = true
L6_6.docx = true
L6_6.pptx = true
L6_6.ppsx = true
L6_6.xlsx = true
L6_6[".rtf"] = true
L6_6[".xml"] = true
L6_6.dotx = true
L6_6.dotm = true
L6_6[".odt"] = true
L6_6.xlsb = true
L6_6.xltx = true
L6_6.xltm = true
L6_6.xlam = true
L6_6[".xla"] = true
L6_6.docm = true
L6_6.xlsm = true
L6_6.pptm = true
for L10_10, L11_11 in L7_7(L8_8) do
  if string.len(L11_11) > 4 and sysio.IsFileExists(L11_11) and L6_6[string.sub(L11_11, -4)] then
    bm.add_threat_file(L11_11)
  end
end
return L7_7
