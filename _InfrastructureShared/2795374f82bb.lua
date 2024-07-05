local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 9, 3)
if string.byte(L0_0, 1) + 119 == string.byte(L0_0, 3) then
  return mp.INFECTED
end
return mp.CLEAN
