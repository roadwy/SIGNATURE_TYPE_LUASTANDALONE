local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 10
L2_2 = 96
L0_0 = L0_0(L1_1, L2_2)
L1_1 = 1
L2_2 = 1
while true do
  L3_3 = #L0_0
  if L1_1 < L3_3 then
    L3_3 = string
    L3_3 = L3_3.byte
    L4_4 = L0_0
    L5_5 = L1_1
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 == 254 then
      L4_4 = string
      L4_4 = L4_4.byte
      L5_5 = L0_0
      L4_4 = L4_4(L5_5, L1_1 + 1)
      if L4_4 ~= 192 then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      L1_1 = L1_1 + 2
      L2_2 = L2_2 + 1
    elseif L3_3 == 60 then
      L4_4 = string
      L4_4 = L4_4.byte
      L5_5 = L0_0
      L4_4 = L4_4(L5_5, L1_1 + 1)
      L5_5 = L2_2 + 111
      if L4_4 ~= L5_5 then
        L5_5 = L2_2 + 118
        if L4_4 ~= L5_5 then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
      end
      L5_5 = "\235"
      pe.mmap_patch_va(pevars.sigaddr + L1_1 + 11, L5_5)
      return mp.INFECTED
    else
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
