local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  L0_0 = L0_0(L1_1)
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    for L5_5, L6_6 in L2_2(L3_3) do
      if sysio.IsFileExists(L6_6) then
        bm.add_related_file(L6_6)
      end
    end
  end
end
L0_0 = add_parents
L0_0()
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
