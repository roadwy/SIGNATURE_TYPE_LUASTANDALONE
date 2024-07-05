local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L1_1 = L1_1.lower
    L1_1 = L1_1(L1_1)
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L1_1 = L1_1.utf8p2
      L1_1 = L1_1.lower
      L1_1 = L1_1(L1_1)
      L0_0 = L1_1
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L1_1 = L1_1.utf8p2
        L1_1 = L1_1.lower
        L1_1 = L1_1(L1_1)
        L0_0 = L1_1
      end
    end
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = extractDllForRegproc
L1_1 = L1_1(L0_0)
if L1_1 and checkFileLastWriteTime(L1_1, 3600) == false and mp.IsKnownFriendlyFile(L1_1, true, false) == false then
  bm.add_related_file(L1_1)
  return mp.INFECTED
end
return mp.CLEAN
