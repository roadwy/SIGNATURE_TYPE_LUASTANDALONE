local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 then
  L1_1 = {
    L2_2,
    L3_3,
    L4_4
  }
  for L5_5, L6_6 in L2_2(L3_3) do
    if L0_0:find(L6_6, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
