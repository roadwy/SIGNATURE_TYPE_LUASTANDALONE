local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
function L0_0(A0_6, A1_7)
  local L2_8, L3_9, L4_10, L5_11
  if A0_6 == nil then
    L2_8 = nil
    return L2_8
  end
  L2_8 = true
  L3_9 = 0
  if A1_7 == nil then
    L4_10 = string
    L4_10 = L4_10.len
    L5_11 = A1_7
    L4_10 = L4_10(L5_11)
  elseif L4_10 > 0 then
    L2_8 = false
    L4_10 = string
    L4_10 = L4_10.len
    L5_11 = A1_7
    L4_10 = L4_10(L5_11)
    L3_9 = L4_10
  end
  L4_10 = bm
  L4_10 = L4_10.get_process_relationships
  L5_11 = A0_6
  L5_11 = L4_10(L5_11)
  if L5_11 == nil or #L5_11 < 1 or #L5_11 > 4 then
    return nil
  end
  for _FORV_10_, _FORV_11_ in ipairs(L5_11) do
    if mp.bitand(_FORV_11_.reason_ex, 1) == 1 and (L2_8 == true or L3_9 < string.len(_FORV_11_.image_path) and string.sub(_FORV_11_.image_path, -L3_9) == A1_7) then
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
L5_5 = "\\bitsadmin.exe"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[5]
L4_4 = L4_4.matched
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[5]
L4_4 = L4_4.ppid
if L3_3 ~= L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {}
L5_5[".xls"] = true
L5_5[".doc"] = true
L5_5[".ppt"] = true
L5_5[".pps"] = true
L5_5.docx = true
L5_5.pptx = true
L5_5.ppsx = true
L5_5.xlsx = true
L5_5[".rtf"] = true
L5_5[".xml"] = true
L5_5.dotx = true
L5_5.dotm = true
L5_5[".odt"] = true
L5_5.xlsb = true
L5_5.xltx = true
L5_5.xltm = true
L5_5.xlam = true
L5_5[".xla"] = true
L5_5.docm = true
L5_5.xlsm = true
L5_5.pptm = true
bm_AddRelatedFileFromCommandLine(L1_1, L5_5)
return mp.INFECTED
