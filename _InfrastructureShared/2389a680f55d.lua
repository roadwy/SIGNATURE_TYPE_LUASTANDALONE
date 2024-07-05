local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.PointerToRawData
L1_1 = pesecs
L1_1 = L1_1[pehdr.NumberOfSections]
L1_1 = L1_1.SizeOfRawData
L0_0 = L0_0 + L1_1
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(L0_0, 60)
if mp.crc32(-1, L1_1, 1, 60) ~= 2693178178 then
  return mp.CLEAN
end
return mp.INFECTED
