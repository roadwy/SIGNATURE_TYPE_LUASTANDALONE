local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = versioning
L0_0 = L0_0.GetOrgID
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 ~= "d9e92961-6699-4647-99d4-e23663461fe5" then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 ~= "2559b15e-e168-4d57-978b-6628179d78ac" then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = L0_0
      L1_1 = L1_1(L2_2)
      if L1_1 ~= "8efa8f39-7f99-4428-bf6d-f2137e4a80d4" then
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = L0_0
        L1_1 = L1_1(L2_2)
      end
    end
  elseif L1_1 == "cf258717-a6c4-47c1-96a1-2ce4edc921de" then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
function L1_1(A0_12, A1_13)
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
getFirstChildPpid = L1_1
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L1_1 = L3_3.ppid
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L2_2 = L3_3.utf8p2
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p2
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L1_1 = L3_3.ppid
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L2_2 = L3_3.utf8p2
    end
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L3_3 = L3_3.utf8p2
      if L3_3 ~= nil then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[3]
        L1_1 = L3_3.ppid
        L3_3 = this_sigattrlog
        L3_3 = L3_3[3]
        L2_2 = L3_3.utf8p2
      end
    end
  end
end
if L1_1 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = getFirstChildPpid
L4_4 = L1_1
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
L5_5 = mp
L5_5 = L5_5.GetExecutablesFromCommandLine
L6_6 = L2_2
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
  if string.len(L11_11) > 4 and sysio.IsFileExists(L11_11) and L6_6[string.sub(L11_11, -4)] and mp.IsKnownFriendlyFile(L11_11, true, false) == false then
    bm.add_threat_file(L11_11)
  end
end
L7_7(L8_8)
if L7_7 ~= nil then
  L10_10 = L7_7
  L10_10 = "\\appdata\\local\\\\seleniumbasic\\"
  L11_11 = 1
elseif L8_8 ~= nil then
  return L8_8
end
if L8_8 then
  L10_10 = true
  L11_11 = true
  if L8_8 == false then
    L10_10 = L7_7
    L9_9(L10_10)
    return L9_9
  elseif L8_8 == true then
    return L9_9
  end
end
return L8_8
