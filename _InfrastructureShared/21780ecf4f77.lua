local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = pe
  L0_0 = L0_0.mmap_va_nofastfail
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.VA
  L1_1 = L1_1 + 4
  L0_0 = L0_0(L1_1, 4)
  L1_1 = pe
  L1_1 = L1_1.mmap_va_nofastfail
  L1_1 = L1_1(hstrlog[1].VA + 9, 4)
  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.2_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
