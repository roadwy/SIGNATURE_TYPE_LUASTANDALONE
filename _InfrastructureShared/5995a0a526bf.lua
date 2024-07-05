local L0_0, L1_1, L2_2, L3_3
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 13
L2_2 = 96
L0_0 = L0_0(L1_1, L2_2)
L1_1 = 1
while true do
  L2_2 = #L0_0
  if L1_1 < L2_2 then
    L2_2 = string
    L2_2 = L2_2.byte
    L3_3 = L0_0
    L2_2 = L2_2(L3_3, L1_1)
    if L2_2 == 232 then
      L3_3 = mp
      L3_3 = L3_3.readu_u32
      L3_3 = L3_3(L0_0, L1_1 + 1)
      if L3_3 ~= 0 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L1_1 = L1_1 + 5
    elseif L2_2 == 61 then
      L3_3 = "\235"
      pe.mmap_patch_va(pevars.sigaddr + L1_1 + 34, L3_3)
      return mp.INFECTED
    else
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
