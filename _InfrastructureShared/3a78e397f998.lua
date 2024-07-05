local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L0_0 = L0_0 + 14
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0
  L3_3 = 4
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, 1)
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L3_3 = L3_3(L2_2, 16)
  if string.sub(L3_3, 1, 3) == "cmd" then
    return mp.INFECTED
  end
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.VA
    L0_0 = L0_0 + 9
    L1_1 = pe
    L1_1 = L1_1.mmap_va
    L2_2 = L0_0
    L3_3 = 4
    L1_1 = L1_1(L2_2, L3_3)
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, 1)
    L3_3 = pe
    L3_3 = L3_3.mmap_va
    L3_3 = L3_3(L2_2, 16)
    if string.sub(L3_3, 1, 7) == "[Shift]" then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
