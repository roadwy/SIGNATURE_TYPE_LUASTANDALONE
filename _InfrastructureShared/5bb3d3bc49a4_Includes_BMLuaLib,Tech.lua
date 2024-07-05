local L0_0, L1_1, L2_2, L3_3
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
    L1_1 = L2_2.utf8p2
  end
end
L2_2 = {}
L2_2[".one"] = true
L3_3 = bm_AddRelatedFileFromCommandLine
L3_3(L1_1, L2_2, nil, 1)
if L0_0 ~= nil then
  L3_3 = extractDllForRegproc
  L3_3 = L3_3(L0_0)
  if StringEndsWith(L3_3, ".dll") then
    return mp.CLEAN
  end
  if L3_3 and checkFileLastWriteTime(L3_3, 600) == false and mp.IsKnownFriendlyFile(L3_3, true, false) == false then
    bm.add_related_file(L3_3)
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
