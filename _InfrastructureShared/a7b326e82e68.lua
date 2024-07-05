local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p2
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = ".([^.]+)$"
  L3_3 = L1_1(L2_2, L3_3)
  if L3_3 ~= nil and string.match(L3_3, "dll") == nil and string.match(L3_3, "ocx") == nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
