local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.gmatch
    L1_1 = L1_1(L2_2, L3_3)
    for L5_5 in L1_1, nil, nil do
      if sysio.IsFileExists(L5_5) then
        bm.add_related_file(L5_5)
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
