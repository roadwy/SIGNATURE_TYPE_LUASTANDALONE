local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pehdr.AddressOfEntryPoint + pehdr.ImageBase, 4)
if opclog[1].address == pehdr.AddressOfEntryPoint + pehdr.ImageBase and string.byte(L0_0, 1) == 226 and string.byte(L0_0, 2) == 254 and string.byte(L0_0, 3) == 106 and string.byte(L0_0, 4) == 0 and not peattributes.packed and not peattributes.hasstandardentry then
  mp.changedetectionname(268436398)
  return mp.INFECTED
end
return mp.SUSPICIOUS
