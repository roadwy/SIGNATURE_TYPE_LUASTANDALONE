local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isvbnative
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isvbpcode
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L1_1(false)
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L1_1 = L1_1(L0_0 + 62, 4)
  if string.byte(L1_1, 1) == string.byte(L1_1, 4) and string.byte(L1_1, 2) == string.byte(L1_1, 3) then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
