local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[4]
    L0_0 = L0_0.utf8p1
    L1_1 = {}
    L1_1[".dll"] = true
    L1_1[".ocx"] = true
    bm_AddRelatedFileFromCommandLine(L0_0, L1_1, nil, 6)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
