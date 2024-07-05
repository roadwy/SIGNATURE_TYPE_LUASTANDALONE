local L0_0, L1_1, L2_2
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
      L1_1 = L2_2.utf8p2
    end
  end
end
if L1_1 == nil or L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L0_0 ~= nil then
  L2_2 = extractDllForRegproc
  L2_2 = L2_2(L0_0)
  if L2_2 then
    if contains(L1_1, L2_2) then
      return mp.CLEAN
    end
    if checkFileLastWriteTime(L2_2, 600) == false and mp.IsKnownFriendlyFile(L2_2, true, false) == false then
      bm.add_related_file(L2_2)
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
