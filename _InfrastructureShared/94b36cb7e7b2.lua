local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[5]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = L0_0.match
    L1_1 = L1_1(L0_0, "/c ([^\\].*)")
    if L1_1 ~= nil and sysio.IsFileExists(L1_1) then
      bm.add_related_file(L1_1)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
