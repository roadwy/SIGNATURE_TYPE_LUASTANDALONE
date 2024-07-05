local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr, 64)
if mp.readu_u32(L0_0, 6) == 4294967295 then
  return mp.CLEAN
end
if mp.readu_u32(L0_0, 6) ~= mp.readu_u32(L0_0, 22) then
  return mp.CLEAN
end
if mp.readu_u32(L0_0, 6) ~= mp.readu_u32(L0_0, 30) then
  return mp.CLEAN
end
if mp.bitand(mp.readu_u16(L0_0, 28), 255) < 112 then
  pe.mmap_patch_va(pevars.sigaddr + 27, "\127")
  return mp.LOWFI
end
return mp.CLEAN
