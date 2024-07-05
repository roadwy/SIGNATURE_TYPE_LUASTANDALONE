local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.VA
    L0_0 = L0_0 + 6
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L2_2 = L2_2(L0_0 + 1, 4)
    L1_1 = L1_1(L2_2, 1)
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L2_2 = L2_2(L1_1, 95)
    if string.sub(L2_2, 1, 95) == "Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\CLSID\\{871C5380-42A0-1069-A2EA-08002B30309D}" then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
