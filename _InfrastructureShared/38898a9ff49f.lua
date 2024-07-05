local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr - 40, 5)
if mp.readu_u32(L0_0, 2) < 3145728 then
  return mp.CLEAN
end
return mp.INFECTED
