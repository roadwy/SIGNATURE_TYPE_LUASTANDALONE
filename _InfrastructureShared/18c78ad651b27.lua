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
  L1_1 = L1_1 + 10
  L0_0 = L0_0(L1_1, 4)
  L1_1 = pe
  L1_1 = L1_1.mmap_va_nofastfail
  L1_1 = L1_1(hstrlog[1].VA - 4, 4)
  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
    L1_1 = L1_1 + 20
    L0_0 = L0_0(L1_1, 4)
    L1_1 = pe
    L1_1 = L1_1.mmap_va_nofastfail
    L1_1 = L1_1(hstrlog[2].VA - 4, 4)
    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
      L1_1 = L1_1 + 12
      L0_0 = L0_0(L1_1, 4)
      L1_1 = pe
      L1_1 = L1_1.mmap_va_nofastfail
      L1_1 = L1_1(hstrlog[3].VA - 4, 4)
      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
        L1_1 = L1_1 + 26
        L0_0 = L0_0(L1_1, 4)
        L1_1 = pe
        L1_1 = L1_1.mmap_va_nofastfail
        L1_1 = L1_1(hstrlog[4].VA - 11, 4)
        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
          L1_1 = L1_1 + 12
          L0_0 = L0_0(L1_1, 4)
          L1_1 = pe
          L1_1 = L1_1.mmap_va_nofastfail
          L1_1 = L1_1(hstrlog[5].VA - 8, 4)
          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
            L1_1 = L1_1 + 19
            L0_0 = L0_0(L1_1, 4)
            L1_1 = pe
            L1_1 = L1_1.mmap_va_nofastfail
            L1_1 = L1_1(hstrlog[6].VA - 4, 4)
            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
          else
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = mp
              L0_0 = L0_0.bitor
              L1_1 = mp
              L1_1 = L1_1.readu_u32
              L1_1 = L1_1(pe.mmap_va_nofastfail(hstrlog[7].VA + 10, 4), 1)
              L0_0 = L0_0(L1_1, mp.readu_u32(pe.mmap_va_nofastfail(hstrlog[7].VA + 16, 4), 1))
              L1_1 = pe
              L1_1 = L1_1.mmap_va_nofastfail
              L1_1 = L1_1(hstrlog[7].VA + 5, 4)
              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%08X_%08X", L0_0, mp.readu_u32(L1_1, 1)))
            else
              L0_0 = hstrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.matched
              if L0_0 then
                L0_0 = mp
                L0_0 = L0_0.set_mpattribute
                L1_1 = "HSTR:Obfuscator.PN!crc_key.4_78E259C9_3CF87511"
                L0_0(L1_1)
              else
                L0_0 = hstrlog
                L0_0 = L0_0[9]
                L0_0 = L0_0.matched
                if L0_0 then
                  L0_0 = mp
                  L0_0 = L0_0.bitor
                  L1_1 = mp
                  L1_1 = L1_1.readu_u32
                  L1_1 = L1_1(pe.mmap_va_nofastfail(hstrlog[9].VA - 2, 4), 1)
                  L0_0 = L0_0(L1_1, mp.readu_u32(pe.mmap_va_nofastfail(hstrlog[9].VA + 14, 4), 1))
                  L1_1 = pe
                  L1_1 = L1_1.mmap_va_nofastfail
                  L1_1 = L1_1(hstrlog[9].VA + 6, 4)
                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%08X_%08X", L0_0, mp.readu_u32(L1_1, 1)))
                else
                  L0_0 = hstrlog
                  L0_0 = L0_0[10]
                  L0_0 = L0_0.matched
                  if L0_0 then
                    L0_0 = mp
                    L0_0 = L0_0.set_mpattribute
                    L1_1 = "HSTR:Obfuscator.PN!crc_key.4_79F259CB_3EF87513"
                    L0_0(L1_1)
                  else
                    L0_0 = hstrlog
                    L0_0 = L0_0[11]
                    L0_0 = L0_0.matched
                    if L0_0 then
                      L0_0 = pe
                      L0_0 = L0_0.mmap_va_nofastfail
                      L1_1 = hstrlog
                      L1_1 = L1_1[11]
                      L1_1 = L1_1.VA
                      L1_1 = L1_1 + 55
                      L0_0 = L0_0(L1_1, 4)
                      L1_1 = pe
                      L1_1 = L1_1.mmap_va_nofastfail
                      L1_1 = L1_1(hstrlog[11].VA + 14, 4)
                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                    else
                      L0_0 = hstrlog
                      L0_0 = L0_0[12]
                      L0_0 = L0_0.matched
                      if L0_0 then
                        L0_0 = pe
                        L0_0 = L0_0.mmap_va_nofastfail
                        L1_1 = hstrlog
                        L1_1 = L1_1[12]
                        L1_1 = L1_1.VA
                        L1_1 = L1_1 + 25
                        L0_0 = L0_0(L1_1, 4)
                        L1_1 = pe
                        L1_1 = L1_1.mmap_va_nofastfail
                        L1_1 = L1_1(hstrlog[12].VA + 4, 4)
                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                      else
                        L0_0 = hstrlog
                        L0_0 = L0_0[13]
                        L0_0 = L0_0.matched
                        if L0_0 then
                          L0_0 = pe
                          L0_0 = L0_0.mmap_va_nofastfail
                          L1_1 = hstrlog
                          L1_1 = L1_1[13]
                          L1_1 = L1_1.VA
                          L1_1 = L1_1 + 15
                          L0_0 = L0_0(L1_1, 4)
                          L1_1 = pe
                          L1_1 = L1_1.mmap_va_nofastfail
                          L1_1 = L1_1(hstrlog[13].VA + 4, 4)
                          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.4_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
