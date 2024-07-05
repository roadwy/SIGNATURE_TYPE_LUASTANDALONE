local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
function L0_0(A0_13, A1_14)
  local L2_15, L3_16, L4_17, L5_18
  if A0_13 == nil then
    L2_15 = nil
    return L2_15
  end
  L2_15 = true
  L3_16 = 0
  if A1_14 == nil then
    L4_17 = string
    L4_17 = L4_17.len
    L5_18 = A1_14
    L4_17 = L4_17(L5_18)
  elseif L4_17 > 0 then
    L2_15 = false
    L4_17 = string
    L4_17 = L4_17.len
    L5_18 = A1_14
    L4_17 = L4_17(L5_18)
    L3_16 = L4_17
  end
  L4_17 = bm
  L4_17 = L4_17.get_process_relationships
  L5_18 = A0_13
  L5_18 = L4_17(L5_18)
  if L5_18 == nil or #L5_18 < 1 or #L5_18 > 4 then
    return nil
  end
  for _FORV_10_, _FORV_11_ in ipairs(L5_18) do
    if mp.bitand(_FORV_11_.reason_ex, 1) == 1 and (L2_15 == true or L3_16 < string.len(_FORV_11_.image_path) and string.sub(_FORV_11_.image_path, -L3_16) == A1_14) then
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
L5_5 = "\\powershell.exe"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[6]
L4_4 = L4_4.matched
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[6]
L4_4 = L4_4.ppid
if L3_3 ~= L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = bm
L5_5 = L5_5.add_threat_process
L6_6 = L2_2
L5_5(L6_6)
L5_5 = bm
L5_5 = L5_5.add_threat_process
L6_6 = L4_4
L5_5(L6_6)
L5_5 = this_sigattrlog
L5_5 = L5_5[6]
L5_5 = L5_5.utf8p1
L6_6 = sysio
L6_6 = L6_6.IsFileExists
L7_7 = L5_5
L6_6 = L6_6(L7_7)
if L6_6 then
  L6_6 = mp
  L6_6 = L6_6.IsKnownFriendlyFile
  L7_7 = L5_5
  L6_6 = L6_6(L7_7, L8_8, L9_9)
  if L6_6 == false then
    L6_6 = bm
    L6_6 = L6_6.add_threat_file
    L7_7 = L5_5
    L6_6(L7_7)
  end
end
L6_6 = mp
L6_6 = L6_6.GetExecutablesFromCommandLine
L7_7 = L1_1
L6_6 = L6_6(L7_7)
L7_7 = {}
L7_7[".xls"] = true
L7_7[".doc"] = true
L7_7[".ppt"] = true
L7_7[".pps"] = true
L7_7.docx = true
L7_7.pptx = true
L7_7.ppsx = true
L7_7.xlsx = true
L7_7[".rtf"] = true
L7_7[".xml"] = true
L7_7.dotx = true
L7_7.dotm = true
L7_7[".odt"] = true
L7_7.xlsb = true
L7_7.xltx = true
L7_7.xltm = true
L7_7.xlam = true
L7_7[".xla"] = true
L7_7.docm = true
L7_7.xlsm = true
L7_7.pptm = true
for L11_11, L12_12 in L8_8(L9_9) do
  if string.len(L12_12) > 4 and sysio.IsFileExists(L12_12) and L7_7[string.sub(L12_12, -4)] and mp.IsKnownFriendlyFile(L12_12, true, false) == false then
    bm.add_threat_file(L12_12)
  end
end
return L8_8
