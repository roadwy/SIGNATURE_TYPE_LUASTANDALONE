local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 14, 4)
if mp.readu_u32(L0_0, 1) < 4194304 then
  return mp.CLEAN
end
return mp.INFECTED
