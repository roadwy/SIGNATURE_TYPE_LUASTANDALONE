local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.p2
L1_1 = crypto
L1_1 = L1_1.ComputeEntropy
L1_1 = L1_1(string.sub(L0_0, 1, 512))
if L1_1 >= 6 then
  bm.add_related_string("boot_entropy", "ent=" .. L1_1, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
