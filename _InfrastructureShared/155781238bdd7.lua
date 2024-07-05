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
  L1_1 = L1_1 + 9
  L0_0 = L0_0(L1_1, 4)
  L1_1 = pe
  L1_1 = L1_1.mmap_va_nofastfail
  L1_1 = L1_1(hstrlog[1].VA + 15, 1)
  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1)))
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = pe
    L0_0 = L0_0.mmap_va_nofastfail
    L1_1 = hstrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.VA
    L1_1 = L1_1 + 5
    L0_0 = L0_0(L1_1, 4)
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L1_1(string.format("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", mp.readu_u32(L0_0, 1), 2))
  else
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = pe
      L0_0 = L0_0.mmap_va_nofastfail
      L1_1 = hstrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.VA
      L1_1 = L1_1 + 11
      L0_0 = L0_0(L1_1, 4)
      L1_1 = mp
      L1_1 = L1_1.set_mpattribute
      L1_1(string.format("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", mp.readu_u32(L0_0, 1), 2))
    else
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = pe
        L0_0 = L0_0.mmap_va_nofastfail
        L1_1 = hstrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.VA
        L1_1 = L1_1 + 5
        L0_0 = L0_0(L1_1, 4)
        L1_1 = mp
        L1_1 = L1_1.set_mpattribute
        L1_1(string.format("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", mp.readu_u32(L0_0, 1), 2))
      else
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = pe
          L0_0 = L0_0.mmap_va_nofastfail
          L1_1 = hstrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.VA
          L1_1 = L1_1 + 5
          L0_0 = L0_0(L1_1, 4)
          L1_1 = mp
          L1_1 = L1_1.set_mpattribute
          L1_1(string.format("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", mp.readu_u32(L0_0, 1), 2))
        else
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = pe
            L0_0 = L0_0.mmap_va_nofastfail
            L1_1 = hstrlog
            L1_1 = L1_1[6]
            L1_1 = L1_1.VA
            L1_1 = L1_1 + 15
            L0_0 = L0_0(L1_1, 4)
            L1_1 = mp
            L1_1 = L1_1.set_mpattribute
            L1_1(string.format("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", mp.readu_u32(L0_0, 1), 2))
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
