local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = pe
  L0_0 = L0_0.mmap_va_nofastfail
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.VA
  L1_1 = L1_1 + 5
  L2_2 = 4
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = pe
  L1_1 = L1_1.mmap_va_nofastfail
  L2_2 = hstrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.VA
  L2_2 = L2_2 + 17
  L1_1 = L1_1(L2_2, 1)
  L2_2 = pe
  L2_2 = L2_2.mmap_va_nofastfail
  L2_2 = L2_2(hstrlog[1].VA + 20, 1)
  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), string.byte(L2_2, 1)))
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
    L2_2 = 4
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = pe
    L1_1 = L1_1.mmap_va_nofastfail
    L2_2 = hstrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.VA
    L2_2 = L2_2 + 11
    L1_1 = L1_1(L2_2, 1)
    L2_2 = pe
    L2_2 = L2_2.mmap_va_nofastfail
    L2_2 = L2_2(hstrlog[2].VA + 14, 1)
    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), string.byte(L2_2, 1)))
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
      L1_1 = L1_1 + 6
      L2_2 = 4
      L0_0 = L0_0(L1_1, L2_2)
      L1_1 = pe
      L1_1 = L1_1.mmap_va_nofastfail
      L2_2 = hstrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.VA
      L2_2 = L2_2 + 17
      L1_1 = L1_1(L2_2, 1)
      L2_2 = mp
      L2_2 = L2_2.set_mpattribute
      L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, string.byte(L1_1, 1)))
    else
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.readfile
        L1_1 = pe
        L1_1 = L1_1.foffset_va
        L2_2 = hstrlog
        L2_2 = L2_2[4]
        L2_2 = L2_2.VA
        L2_2 = L2_2 - 6
        L1_1 = L1_1(L2_2)
        L2_2 = 4
        L0_0 = L0_0(L1_1, L2_2)
        L1_1 = mp
        L1_1 = L1_1.readfile
        L2_2 = pe
        L2_2 = L2_2.foffset_va
        L2_2 = L2_2(hstrlog[4].VA - 8)
        L1_1 = L1_1(L2_2, 1)
        L2_2 = mp
        L2_2 = L2_2.set_mpattribute
        L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
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
          L1_1 = L1_1 + 14
          L2_2 = 4
          L0_0 = L0_0(L1_1, L2_2)
          L1_1 = mp
          L1_1 = L1_1.set_mpattribute
          L2_2 = string
          L2_2 = L2_2.format
          L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
          L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
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
            L1_1 = L1_1 + 6
            L2_2 = 4
            L0_0 = L0_0(L1_1, L2_2)
            L1_1 = mp
            L1_1 = L1_1.set_mpattribute
            L2_2 = string
            L2_2 = L2_2.format
            L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
            L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
          else
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = pe
              L0_0 = L0_0.mmap_va_nofastfail
              L1_1 = hstrlog
              L1_1 = L1_1[7]
              L1_1 = L1_1.VA
              L1_1 = L1_1 - 4
              L2_2 = 4
              L0_0 = L0_0(L1_1, L2_2)
              L1_1 = mp
              L1_1 = L1_1.set_mpattribute
              L2_2 = string
              L2_2 = L2_2.format
              L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
              L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
            else
              L0_0 = hstrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.matched
              if L0_0 then
                L0_0 = pe
                L0_0 = L0_0.mmap_va_nofastfail
                L1_1 = hstrlog
                L1_1 = L1_1[8]
                L1_1 = L1_1.VA
                L1_1 = L1_1 + 9
                L2_2 = 4
                L0_0 = L0_0(L1_1, L2_2)
                L1_1 = pe
                L1_1 = L1_1.mmap_va_nofastfail
                L2_2 = hstrlog
                L2_2 = L2_2[8]
                L2_2 = L2_2.VA
                L2_2 = L2_2 + 6
                L1_1 = L1_1(L2_2, 1)
                L2_2 = mp
                L2_2 = L2_2.set_mpattribute
                L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
              else
                L0_0 = hstrlog
                L0_0 = L0_0[9]
                L0_0 = L0_0.matched
                if L0_0 then
                  L0_0 = mp
                  L0_0 = L0_0.readfile
                  L1_1 = pe
                  L1_1 = L1_1.foffset_va
                  L2_2 = hstrlog
                  L2_2 = L2_2[9]
                  L2_2 = L2_2.VA
                  L2_2 = L2_2 + 5
                  L1_1 = L1_1(L2_2)
                  L2_2 = 4
                  L0_0 = L0_0(L1_1, L2_2)
                  L1_1 = mp
                  L1_1 = L1_1.readfile
                  L2_2 = pe
                  L2_2 = L2_2.foffset_va
                  L2_2 = L2_2(hstrlog[9].VA + 11)
                  L1_1 = L1_1(L2_2, 1)
                  L2_2 = mp
                  L2_2 = L2_2.set_mpattribute
                  L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                else
                  L0_0 = hstrlog
                  L0_0 = L0_0[10]
                  L0_0 = L0_0.matched
                  if L0_0 then
                    L0_0 = pe
                    L0_0 = L0_0.mmap_va_nofastfail
                    L1_1 = hstrlog
                    L1_1 = L1_1[10]
                    L1_1 = L1_1.VA
                    L1_1 = L1_1 + 6
                    L2_2 = 4
                    L0_0 = L0_0(L1_1, L2_2)
                    L1_1 = pe
                    L1_1 = L1_1.mmap_va_nofastfail
                    L2_2 = hstrlog
                    L2_2 = L2_2[10]
                    L2_2 = L2_2.VA
                    L2_2 = L2_2 + 12
                    L1_1 = L1_1(L2_2, 1)
                    L2_2 = mp
                    L2_2 = L2_2.set_mpattribute
                    L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                  else
                    L0_0 = hstrlog
                    L0_0 = L0_0[11]
                    L0_0 = L0_0.matched
                    if L0_0 then
                      L0_0 = mp
                      L0_0 = L0_0.readfile
                      L1_1 = pe
                      L1_1 = L1_1.foffset_va
                      L2_2 = hstrlog
                      L2_2 = L2_2[11]
                      L2_2 = L2_2.VA
                      L2_2 = L2_2 + 5
                      L1_1 = L1_1(L2_2)
                      L2_2 = 4
                      L0_0 = L0_0(L1_1, L2_2)
                      L1_1 = mp
                      L1_1 = L1_1.readfile
                      L2_2 = pe
                      L2_2 = L2_2.foffset_va
                      L2_2 = L2_2(hstrlog[11].VA + 11)
                      L1_1 = L1_1(L2_2, 1)
                      L2_2 = mp
                      L2_2 = L2_2.set_mpattribute
                      L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
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
                        L1_1 = L1_1 + 11
                        L2_2 = 4
                        L0_0 = L0_0(L1_1, L2_2)
                        L1_1 = pe
                        L1_1 = L1_1.mmap_va_nofastfail
                        L2_2 = hstrlog
                        L2_2 = L2_2[12]
                        L2_2 = L2_2.VA
                        L2_2 = L2_2 + 6
                        L1_1 = L1_1(L2_2, 1)
                        L2_2 = mp
                        L2_2 = L2_2.set_mpattribute
                        L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
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
                          L1_1 = L1_1 + 5
                          L2_2 = 4
                          L0_0 = L0_0(L1_1, L2_2)
                          L1_1 = pe
                          L1_1 = L1_1.mmap_va_nofastfail
                          L2_2 = hstrlog
                          L2_2 = L2_2[13]
                          L2_2 = L2_2.VA
                          L2_2 = L2_2 + 11
                          L1_1 = L1_1(L2_2, 1)
                          L2_2 = mp
                          L2_2 = L2_2.set_mpattribute
                          L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                        else
                          L0_0 = hstrlog
                          L0_0 = L0_0[14]
                          L0_0 = L0_0.matched
                          if L0_0 then
                            L0_0 = pe
                            L0_0 = L0_0.mmap_va_nofastfail
                            L1_1 = hstrlog
                            L1_1 = L1_1[14]
                            L1_1 = L1_1.VA
                            L1_1 = L1_1 + 11
                            L2_2 = 4
                            L0_0 = L0_0(L1_1, L2_2)
                            L1_1 = pe
                            L1_1 = L1_1.mmap_va_nofastfail
                            L2_2 = hstrlog
                            L2_2 = L2_2[14]
                            L2_2 = L2_2.VA
                            L2_2 = L2_2 + 6
                            L1_1 = L1_1(L2_2, 1)
                            L2_2 = mp
                            L2_2 = L2_2.set_mpattribute
                            L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                          else
                            L0_0 = hstrlog
                            L0_0 = L0_0[15]
                            L0_0 = L0_0.matched
                            if L0_0 then
                              L0_0 = pe
                              L0_0 = L0_0.mmap_va_nofastfail
                              L1_1 = hstrlog
                              L1_1 = L1_1[15]
                              L1_1 = L1_1.VA
                              L1_1 = L1_1 + 5
                              L2_2 = 4
                              L0_0 = L0_0(L1_1, L2_2)
                              L1_1 = mp
                              L1_1 = L1_1.set_mpattribute
                              L2_2 = string
                              L2_2 = L2_2.format
                              L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
                              L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
                            else
                              L0_0 = hstrlog
                              L0_0 = L0_0[16]
                              L0_0 = L0_0.matched
                              if L0_0 then
                                L0_0 = mp
                                L0_0 = L0_0.readfile
                                L1_1 = pe
                                L1_1 = L1_1.foffset_va
                                L2_2 = hstrlog
                                L2_2 = L2_2[16]
                                L2_2 = L2_2.VA
                                L2_2 = L2_2 - 7
                                L1_1 = L1_1(L2_2)
                                L2_2 = 4
                                L0_0 = L0_0(L1_1, L2_2)
                                L1_1 = mp
                                L1_1 = L1_1.readfile
                                L2_2 = pe
                                L2_2 = L2_2.foffset_va
                                L2_2 = L2_2(hstrlog[16].VA - 1)
                                L1_1 = L1_1(L2_2, 1)
                                L2_2 = mp
                                L2_2 = L2_2.set_mpattribute
                                L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                              else
                                L0_0 = hstrlog
                                L0_0 = L0_0[17]
                                L0_0 = L0_0.matched
                                if L0_0 then
                                  L0_0 = mp
                                  L0_0 = L0_0.readfile
                                  L1_1 = pe
                                  L1_1 = L1_1.foffset_va
                                  L2_2 = hstrlog
                                  L2_2 = L2_2[17]
                                  L2_2 = L2_2.VA
                                  L2_2 = L2_2 - 4
                                  L1_1 = L1_1(L2_2)
                                  L2_2 = 4
                                  L0_0 = L0_0(L1_1, L2_2)
                                  L1_1 = mp
                                  L1_1 = L1_1.set_mpattribute
                                  L2_2 = string
                                  L2_2 = L2_2.format
                                  L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
                                  L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
                                else
                                  L0_0 = hstrlog
                                  L0_0 = L0_0[18]
                                  L0_0 = L0_0.matched
                                  if L0_0 then
                                    L0_0 = pe
                                    L0_0 = L0_0.mmap_va_nofastfail
                                    L1_1 = hstrlog
                                    L1_1 = L1_1[18]
                                    L1_1 = L1_1.VA
                                    L1_1 = L1_1 - 4
                                    L2_2 = 4
                                    L0_0 = L0_0(L1_1, L2_2)
                                    L1_1 = mp
                                    L1_1 = L1_1.set_mpattribute
                                    L2_2 = string
                                    L2_2 = L2_2.format
                                    L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
                                    L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
                                  else
                                    L0_0 = hstrlog
                                    L0_0 = L0_0[19]
                                    L0_0 = L0_0.matched
                                    if L0_0 then
                                      L0_0 = mp
                                      L0_0 = L0_0.readfile
                                      L1_1 = pe
                                      L1_1 = L1_1.foffset_va
                                      L2_2 = hstrlog
                                      L2_2 = L2_2[19]
                                      L2_2 = L2_2.VA
                                      L2_2 = L2_2 + 4
                                      L1_1 = L1_1(L2_2)
                                      L2_2 = 4
                                      L0_0 = L0_0(L1_1, L2_2)
                                      L1_1 = mp
                                      L1_1 = L1_1.set_mpattribute
                                      L2_2 = string
                                      L2_2 = L2_2.format
                                      L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
                                      L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
                                    else
                                      L0_0 = hstrlog
                                      L0_0 = L0_0[20]
                                      L0_0 = L0_0.matched
                                      if L0_0 then
                                        L0_0 = mp
                                        L0_0 = L0_0.readfile
                                        L1_1 = pe
                                        L1_1 = L1_1.foffset_va
                                        L2_2 = hstrlog
                                        L2_2 = L2_2[20]
                                        L2_2 = L2_2.VA
                                        L2_2 = L2_2 + 5
                                        L1_1 = L1_1(L2_2)
                                        L2_2 = 4
                                        L0_0 = L0_0(L1_1, L2_2)
                                        L1_1 = mp
                                        L1_1 = L1_1.set_mpattribute
                                        L2_2 = string
                                        L2_2 = L2_2.format
                                        L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
                                        L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
                                      else
                                        L0_0 = hstrlog
                                        L0_0 = L0_0[21]
                                        L0_0 = L0_0.matched
                                        if L0_0 then
                                          L0_0 = mp
                                          L0_0 = L0_0.readfile
                                          L1_1 = pe
                                          L1_1 = L1_1.foffset_va
                                          L2_2 = hstrlog
                                          L2_2 = L2_2[21]
                                          L2_2 = L2_2.VA
                                          L2_2 = L2_2 + 5
                                          L1_1 = L1_1(L2_2)
                                          L2_2 = 4
                                          L0_0 = L0_0(L1_1, L2_2)
                                          L1_1 = mp
                                          L1_1 = L1_1.readfile
                                          L2_2 = pe
                                          L2_2 = L2_2.foffset_va
                                          L2_2 = L2_2(hstrlog[21].VA + 11)
                                          L1_1 = L1_1(L2_2, 1)
                                          L2_2 = mp
                                          L2_2 = L2_2.set_mpattribute
                                          L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                                        else
                                          L0_0 = hstrlog
                                          L0_0 = L0_0[22]
                                          L0_0 = L0_0.matched
                                          if L0_0 then
                                            L0_0 = mp
                                            L0_0 = L0_0.readfile
                                            L1_1 = pe
                                            L1_1 = L1_1.foffset_va
                                            L2_2 = hstrlog
                                            L2_2 = L2_2[22]
                                            L2_2 = L2_2.VA
                                            L2_2 = L2_2 + 5
                                            L1_1 = L1_1(L2_2)
                                            L2_2 = 4
                                            L0_0 = L0_0(L1_1, L2_2)
                                            L1_1 = mp
                                            L1_1 = L1_1.readfile
                                            L2_2 = pe
                                            L2_2 = L2_2.foffset_va
                                            L2_2 = L2_2(hstrlog[22].VA - 1)
                                            L1_1 = L1_1(L2_2, 1)
                                            L2_2 = mp
                                            L2_2 = L2_2.set_mpattribute
                                            L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                                          else
                                            L0_0 = hstrlog
                                            L0_0 = L0_0[23]
                                            L0_0 = L0_0.matched
                                            if L0_0 then
                                              L0_0 = mp
                                              L0_0 = L0_0.readfile
                                              L1_1 = pe
                                              L1_1 = L1_1.foffset_va
                                              L2_2 = hstrlog
                                              L2_2 = L2_2[23]
                                              L2_2 = L2_2.VA
                                              L2_2 = L2_2 + 7
                                              L1_1 = L1_1(L2_2)
                                              L2_2 = 4
                                              L0_0 = L0_0(L1_1, L2_2)
                                              L1_1 = mp
                                              L1_1 = L1_1.readfile
                                              L2_2 = pe
                                              L2_2 = L2_2.foffset_va
                                              L2_2 = L2_2(hstrlog[23].VA - 1)
                                              L1_1 = L1_1(L2_2, 1)
                                              L2_2 = mp
                                              L2_2 = L2_2.set_mpattribute
                                              L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                                            else
                                              L0_0 = hstrlog
                                              L0_0 = L0_0[24]
                                              L0_0 = L0_0.matched
                                              if L0_0 then
                                                L0_0 = mp
                                                L0_0 = L0_0.readfile
                                                L1_1 = pe
                                                L1_1 = L1_1.foffset_va
                                                L2_2 = hstrlog
                                                L2_2 = L2_2[24]
                                                L2_2 = L2_2.VA
                                                L2_2 = L2_2 + 7
                                                L1_1 = L1_1(L2_2)
                                                L2_2 = 4
                                                L0_0 = L0_0(L1_1, L2_2)
                                                L1_1 = mp
                                                L1_1 = L1_1.set_mpattribute
                                                L2_2 = string
                                                L2_2 = L2_2.format
                                                L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_FFFFFFFE_%02X", mp.readu_u32(L0_0, 1), 2)
                                                L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_FFFFFFFE_%02X", mp.readu_u32(L0_0, 1), 2))
                                              else
                                                L0_0 = hstrlog
                                                L0_0 = L0_0[25]
                                                L0_0 = L0_0.matched
                                                if L0_0 then
                                                  L0_0 = mp
                                                  L0_0 = L0_0.readfile
                                                  L1_1 = pe
                                                  L1_1 = L1_1.foffset_va
                                                  L2_2 = hstrlog
                                                  L2_2 = L2_2[25]
                                                  L2_2 = L2_2.VA
                                                  L2_2 = L2_2 + 4
                                                  L1_1 = L1_1(L2_2)
                                                  L2_2 = 4
                                                  L0_0 = L0_0(L1_1, L2_2)
                                                  L1_1 = mp
                                                  L1_1 = L1_1.set_mpattribute
                                                  L2_2 = string
                                                  L2_2 = L2_2.format
                                                  L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_FFFFFFFE_%02X", mp.readu_u32(L0_0, 1), 2)
                                                  L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_FFFFFFFE_%02X", mp.readu_u32(L0_0, 1), 2))
                                                else
                                                  L0_0 = hstrlog
                                                  L0_0 = L0_0[26]
                                                  L0_0 = L0_0.matched
                                                  if L0_0 then
                                                    L0_0 = mp
                                                    L0_0 = L0_0.readfile
                                                    L1_1 = pe
                                                    L1_1 = L1_1.foffset_va
                                                    L2_2 = hstrlog
                                                    L2_2 = L2_2[26]
                                                    L2_2 = L2_2.VA
                                                    L2_2 = L2_2 - 4
                                                    L1_1 = L1_1(L2_2)
                                                    L2_2 = 4
                                                    L0_0 = L0_0(L1_1, L2_2)
                                                    L1_1 = mp
                                                    L1_1 = L1_1.set_mpattribute
                                                    L2_2 = string
                                                    L2_2 = L2_2.format
                                                    L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2)
                                                    L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), 1, 2))
                                                  else
                                                    L0_0 = hstrlog
                                                    L0_0 = L0_0[27]
                                                    L0_0 = L0_0.matched
                                                    if L0_0 then
                                                      L0_0 = mp
                                                      L0_0 = L0_0.readfile
                                                      L1_1 = pe
                                                      L1_1 = L1_1.foffset_va
                                                      L2_2 = hstrlog
                                                      L2_2 = L2_2[27]
                                                      L2_2 = L2_2.VA
                                                      L2_2 = L2_2 + 4
                                                      L1_1 = L1_1(L2_2)
                                                      L2_2 = 4
                                                      L0_0 = L0_0(L1_1, L2_2)
                                                      L1_1 = mp
                                                      L1_1 = L1_1.readfile
                                                      L2_2 = pe
                                                      L2_2 = L2_2.foffset_va
                                                      L2_2 = L2_2(hstrlog[27].VA + 10)
                                                      L1_1 = L1_1(L2_2, 1)
                                                      L2_2 = mp
                                                      L2_2 = L2_2.set_mpattribute
                                                      L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                                                    else
                                                      L0_0 = hstrlog
                                                      L0_0 = L0_0[28]
                                                      L0_0 = L0_0.matched
                                                      if L0_0 then
                                                        L0_0 = mp
                                                        L0_0 = L0_0.readfile
                                                        L1_1 = pe
                                                        L1_1 = L1_1.foffset_va
                                                        L2_2 = hstrlog
                                                        L2_2 = L2_2[28]
                                                        L2_2 = L2_2.VA
                                                        L2_2 = L2_2 + 4
                                                        L1_1 = L1_1(L2_2)
                                                        L2_2 = 4
                                                        L0_0 = L0_0(L1_1, L2_2)
                                                        L1_1 = mp
                                                        L1_1 = L1_1.set_mpattribute
                                                        L2_2 = string
                                                        L2_2 = L2_2.format
                                                        L2_2 = L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_FFFFFFFE_%02X", mp.readu_u32(L0_0, 1), -2, 2)
                                                        L1_1(L2_2, L2_2("HSTR:Obfuscator.PN!crc_key.6_%08X_FFFFFFFE_%02X", mp.readu_u32(L0_0, 1), -2, 2))
                                                      else
                                                        L0_0 = hstrlog
                                                        L0_0 = L0_0[29]
                                                        L0_0 = L0_0.matched
                                                        if L0_0 then
                                                          L0_0 = mp
                                                          L0_0 = L0_0.readfile
                                                          L1_1 = pe
                                                          L1_1 = L1_1.foffset_va
                                                          L2_2 = hstrlog
                                                          L2_2 = L2_2[29]
                                                          L2_2 = L2_2.VA
                                                          L2_2 = L2_2 + 4
                                                          L1_1 = L1_1(L2_2)
                                                          L2_2 = 4
                                                          L0_0 = L0_0(L1_1, L2_2)
                                                          L1_1 = mp
                                                          L1_1 = L1_1.readfile
                                                          L2_2 = pe
                                                          L2_2 = L2_2.foffset_va
                                                          L2_2 = L2_2(hstrlog[29].VA - 1)
                                                          L1_1 = L1_1(L2_2, 1)
                                                          L2_2 = mp
                                                          L2_2 = L2_2.set_mpattribute
                                                          L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
                                                        else
                                                          L0_0 = hstrlog
                                                          L0_0 = L0_0[30]
                                                          L0_0 = L0_0.matched
                                                          if L0_0 then
                                                            L0_0 = mp
                                                            L0_0 = L0_0.readfile
                                                            L1_1 = pe
                                                            L1_1 = L1_1.foffset_va
                                                            L2_2 = hstrlog
                                                            L2_2 = L2_2[30]
                                                            L2_2 = L2_2.VA
                                                            L2_2 = L2_2 + 7
                                                            L1_1 = L1_1(L2_2)
                                                            L2_2 = 4
                                                            L0_0 = L0_0(L1_1, L2_2)
                                                            L1_1 = mp
                                                            L1_1 = L1_1.readfile
                                                            L2_2 = pe
                                                            L2_2 = L2_2.foffset_va
                                                            L2_2 = L2_2(hstrlog[30].VA - 1)
                                                            L1_1 = L1_1(L2_2, 1)
                                                            L2_2 = mp
                                                            L2_2 = L2_2.set_mpattribute
                                                            L2_2(string.format("HSTR:Obfuscator.PN!crc_key.6_%08X_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1), 2))
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
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
