local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p1
    L0_0 = L0_0(L1_1)
    L1_1 = L0_0.find
    L1_1 = L1_1(L0_0, "\\windows nt\\", 1, true)
    if L1_1 then
      L1_1 = {}
      L1_1[".dll"] = true
      L1_1[".ocx"] = true
      bm_AddRelatedFileFromCommandLine(L0_0, L1_1, nil, 6)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
