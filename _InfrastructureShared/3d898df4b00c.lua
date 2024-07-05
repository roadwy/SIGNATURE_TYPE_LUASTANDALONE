local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr, 32)
L0_0 = pe.mmap_va(pevars.sigaddr + 29 + (string.byte(L0_0, 26) + string.byte(L0_0, 27) * 256 + string.byte(L0_0, 28) * 65536 + string.byte(L0_0, 29) * 16777216) - 4, 32)
if mp.bitand(pevars.sigaddr + 29 + (string.byte(L0_0, 26) + string.byte(L0_0, 27) * 256 + string.byte(L0_0, 28) * 65536 + string.byte(L0_0, 29) * 16777216) + (string.byte(L0_0, 1) + string.byte(L0_0, 2) * 256 + string.byte(L0_0, 3) * 65536 + string.byte(L0_0, 4) * 16777216), 4294967295) ~= pevars.sigaddr then
  return mp.CLEAN
end
if pehdr.SizeOfImage >= 503808 and pehdr.SizeOfImage <= 573440 or pehdr.SizeOfImage >= 409600 and pehdr.SizeOfImage <= 425984 or pehdr.SizeOfImage >= 868352 and pehdr.SizeOfImage <= 888832 then
  return mp.INFECTED
end
mp.changedetectionname(805306375)
return mp.SUSPICIOUS
