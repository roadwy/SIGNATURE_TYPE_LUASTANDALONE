local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = extractDllForRegproc
  L1_1 = L1_1(L0_0)
  if L1_1 and checkFileLastWriteTime(L1_1, 600) == false and mp.IsKnownFriendlyFile(L1_1, true, false) == false then
    bm.add_threat_file(L1_1)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
