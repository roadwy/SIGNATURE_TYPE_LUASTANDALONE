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
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  L1_1 = L0_0.match
  L1_1 = L1_1(L0_0, "/xml%S?([^/]*)")
  if sysio.IsFileExists(L1_1) then
    bm.add_related_file(L1_1)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
