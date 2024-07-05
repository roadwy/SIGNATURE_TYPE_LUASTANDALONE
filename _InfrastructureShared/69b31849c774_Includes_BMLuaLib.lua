local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4)
  local L2_5, L3_6, L4_7, L5_8
  if A0_3 == nil then
    L2_5 = nil
    return L2_5
  end
  L2_5 = true
  L3_6 = 0
  if A1_4 == nil then
    L4_7 = string
    L4_7 = L4_7.len
    L5_8 = A1_4
    L4_7 = L4_7(L5_8)
  elseif L4_7 > 0 then
    L2_5 = false
    L4_7 = string
    L4_7 = L4_7.len
    L5_8 = A1_4
    L4_7 = L4_7(L5_8)
    L3_6 = L4_7
  end
  L4_7 = bm
  L4_7 = L4_7.get_process_relationships
  L5_8 = A0_3
  L5_8 = L4_7(L5_8)
  if L5_8 == nil or #L5_8 < 1 or #L5_8 > 4 then
    return nil
  end
  for _FORV_10_, _FORV_11_ in ipairs(L5_8) do
    if mp.bitand(_FORV_11_.reason_ex, 1) == 1 and (L2_5 == true or L3_6 < string.len(_FORV_11_.image_path) and string.sub(_FORV_11_.image_path, -L3_6) == A1_4) then
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
L2_2 = L2_2(L0_0, "\\cmd.exe")
if L2_2 == nil then
  return mp.CLEAN
end
if getFirstChildPpid(L2_2, "\\powershell.exe") == nil then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine(L1_1)
return mp.INFECTED
