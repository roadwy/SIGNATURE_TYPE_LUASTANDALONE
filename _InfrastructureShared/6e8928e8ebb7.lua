local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.ImageBase
L1_1 = pesecs
L1_1 = L1_1[1]
L1_1 = L1_1.VirtualAddress
L0_0 = L0_0 + L1_1
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(L0_0, 4)
if string.sub(L1_1, 1, 4) == "(re)" then
  mp.changedetectionname(805306416)
end
if mp.readu_u32(epcode, 1) == 1374456661 and mp.readu_u32(epcode, 5) == 3898037843 and mp.readu_u32(epcode, 13) == 4278738315 and mp.readu_u32(epcode, 17) == 1703089267 and mp.readu_u16(epcode, 21) == 252 then
  mp.changedetectionname(805306416)
end
return mp.INFECTED
