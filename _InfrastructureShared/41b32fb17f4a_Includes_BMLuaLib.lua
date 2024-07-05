local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.ppid
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.ppid
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[1]
      L1_1 = L1_1.utf8p1
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L2_2 = L2_2.utf8p2
      L3_3 = L2_2
      L3_3 = L3_3 .. ";" .. L0_0
      bm.trigger_sig(L1_1, L3_3, L0_0)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
