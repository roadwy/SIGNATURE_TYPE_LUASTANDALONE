local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr, 32)
L0_0 = pe.mmap_va(pevars.sigaddr + 31 + (string.byte(L0_0, 28) + string.byte(L0_0, 29) * 256 + string.byte(L0_0, 30) * 65536 + string.byte(L0_0, 31) * 16777216) - 4, 32)
if mp.bitand(pevars.sigaddr + 31 + (string.byte(L0_0, 28) + string.byte(L0_0, 29) * 256 + string.byte(L0_0, 30) * 65536 + string.byte(L0_0, 31) * 16777216) + (string.byte(L0_0, 1) + string.byte(L0_0, 2) * 256 + string.byte(L0_0, 3) * 65536 + string.byte(L0_0, 4) * 16777216), 4294967295) ~= pevars.sigaddr then
  return mp.CLEAN
end
mp.changedetectionname(805306375)
return mp.SUSPICIOUS
