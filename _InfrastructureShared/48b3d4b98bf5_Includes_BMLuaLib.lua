local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[1].utf8p2)
  L0_0 = L1_1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = extractDllForRegproc
L1_1 = L1_1(L0_0)
if L1_1 == nil then
  return mp.CLEAN
end
if sysio.IsFileExists(L1_1) and mp.IsKnownFriendlyFile(L1_1, true, false) == false then
  bm.add_threat_file(L1_1)
end
return mp.INFECTED
