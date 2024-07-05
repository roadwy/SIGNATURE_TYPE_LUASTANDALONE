local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = 0
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
    L0_0 = L2_2.utf8p2
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
      L0_0 = L2_2.utf8p2
    end
  end
end
if L0_0 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
    if string.find(L7_7, "c:\\programdata", 1, true) then
      return mp.CLEAN
    elseif string.find(L7_7, "c:\\program files", 1, true) then
      return mp.CLEAN
    elseif string.find(L7_7, "c:\\progra~", 1, true) then
      return mp.CLEAN
    elseif string.find(L7_7, "c:\\windows\\", 1, true) then
      if string.find(L7_7, "c:\\windows\\system", 1, true) then
        return mp.CLEAN
      elseif string.find(L7_7, "c:\\windows\\syswow64", 1, true) then
        return mp.CLEAN
      elseif string.find(L7_7, "\\assembly\\nativeimages", 1, true) then
        return mp.CLEAN
      elseif string.find(L7_7, "\\winsxs", 1, true) then
        return mp.CLEAN
      elseif string.find(L7_7, "\\servicing", 1, true) then
        return mp.CLEAN
      end
    end
    if sysio.IsFileExists(L7_7) then
      bm.add_related_file(L7_7)
      L1_1 = L1_1 + 1
    end
  end
end
L2_2 = MpCommon
L2_2 = L2_2.GetPersistContextNoPath
L2_2 = L2_2(L3_3)
if L2_2 then
  for L6_6, L7_7 in L3_3(L4_4) do
    if sysio.IsFileExists(L7_7) then
      bm.add_related_file(L7_7)
    end
  end
end
if L1_1 > 0 then
  return L3_3
end
return L3_3
