local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 15
L2_2 = 255
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
      L2_2 = L2_2 + 1
      L1_1 = L1_1 + 2
    elseif L3_3 == 4 then
      L4_4 = string
      L4_4 = L4_4.byte
      L5_5 = L0_0
      L4_4 = L4_4(L5_5, L1_1 + 1)
      L2_2 = L2_2 + L4_4
      L1_1 = L1_1 + 2
    elseif L3_3 == 44 then
      L4_4 = string
      L4_4 = L4_4.byte
      L5_5 = L0_0
      L4_4 = L4_4(L5_5, L1_1 + 1)
      L2_2 = L2_2 - L4_4
      L1_1 = L1_1 + 2
    elseif L3_3 == 60 then
      L4_4 = string
      L4_4 = L4_4.byte
      L5_5 = L0_0
      L4_4 = L4_4(L5_5, L1_1 + 1)
      L5_5 = L2_2 + 110
      if L4_4 >= L5_5 then
        L5_5 = L2_2 + 112
      else
      end
      if L4_4 <= L5_5 or L4_4 == L2_2 then
        L5_5 = "\235"
        pe.mmap_patch_va(pevars.sigaddr + L1_1 + 16, L5_5)
        return mp.INFECTED
      end
      L1_1 = L1_1 + 2
    elseif L3_3 == 116 then
      L1_1 = L1_1 + 2
    elseif L3_3 == 117 then
      L4_4 = string
      L4_4 = L4_4.byte
      L5_5 = L0_0
      L4_4 = L4_4(L5_5, L1_1 + 1)
      L4_4 = L4_4 + 2
      L1_1 = L1_1 + L4_4
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
