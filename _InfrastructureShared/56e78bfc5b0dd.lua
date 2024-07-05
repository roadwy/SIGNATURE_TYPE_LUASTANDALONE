local L0_0, L1_1
function L0_0(A0_2, A1_3)
  local L2_4
  L2_4 = pe
  L2_4 = L2_4.mmap_va_nofastfail
  L2_4 = L2_4(A0_2, A1_3)
  if L2_4 == "" then
    L2_4 = mp.readfile(pe.foffset_va(A0_2), A1_3)
  end
  return L2_4
end
map_read = L0_0
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
  L1_1 = L1_1 + 4
  L0_0 = L0_0(L1_1, 4)
  L1_1 = pe
  L1_1 = L1_1.mmap_va_nofastfail
  L1_1 = L1_1(hstrlog[1].VA + 11, 4)
  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
    L1_1 = L1_1 + 4
    L0_0 = L0_0(L1_1, 4)
    L1_1 = pe
    L1_1 = L1_1.mmap_va_nofastfail
    L1_1 = L1_1(hstrlog[2].VA + 9, 4)
    if L0_0 == "" or L1_1 == "" then
      L0_0 = mp.readfile(pe.foffset_va(hstrlog[2].VA + 4), 4)
      L1_1 = mp.readfile(pe.foffset_va(hstrlog[2].VA + 9), 4)
    end
    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
      L1_1 = L1_1 + 4
      L0_0 = L0_0(L1_1, 4)
      L1_1 = pe
      L1_1 = L1_1.mmap_va_nofastfail
      L1_1 = L1_1(hstrlog[3].VA + 9, 4)
      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
        L1_1 = L1_1 + 4
        L0_0 = L0_0(L1_1, 4)
        L1_1 = pe
        L1_1 = L1_1.mmap_va_nofastfail
        L1_1 = L1_1(hstrlog[4].VA + 9, 4)
        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
          L1_1 = L1_1 + 4
          L0_0 = L0_0(L1_1, 4)
          L1_1 = L0_0
          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
            L1_1 = L1_1 - 12
            L0_0 = L0_0(L1_1, 4)
            L1_1 = pe
            L1_1 = L1_1.mmap_va_nofastfail
            L1_1 = L1_1(hstrlog[6].VA - 7, 4)
            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
              L1_1 = L1_1 + 4
              L0_0 = L0_0(L1_1, 4)
              L1_1 = pe
              L1_1 = L1_1.mmap_va_nofastfail
              L1_1 = L1_1(hstrlog[7].VA + 9, 4)
              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                L1_1 = L1_1 - 16
                L0_0 = L0_0(L1_1, 4)
                L1_1 = pe
                L1_1 = L1_1.mmap_va_nofastfail
                L1_1 = L1_1(hstrlog[8].VA - 4, 4)
                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
              else
                L0_0 = hstrlog
                L0_0 = L0_0[9]
                L0_0 = L0_0.matched
                if L0_0 then
                  L0_0 = pe
                  L0_0 = L0_0.mmap_va_nofastfail
                  L1_1 = hstrlog
                  L1_1 = L1_1[9]
                  L1_1 = L1_1.VA
                  L1_1 = L1_1 - 11
                  L0_0 = L0_0(L1_1, 4)
                  L1_1 = pe
                  L1_1 = L1_1.mmap_va_nofastfail
                  L1_1 = L1_1(hstrlog[9].VA - 4, 4)
                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                    L1_1 = L1_1 + 4
                    L0_0 = L0_0(L1_1, 4)
                    L1_1 = pe
                    L1_1 = L1_1.mmap_va_nofastfail
                    L1_1 = L1_1(hstrlog[10].VA + 9, 4)
                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                      L1_1 = L1_1 - 1
                      L0_0 = L0_0(L1_1, 4)
                      L1_1 = pe
                      L1_1 = L1_1.mmap_va_nofastfail
                      L1_1 = L1_1(hstrlog[11].VA + 6, 4)
                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                        L1_1 = L1_1 + 5
                        L0_0 = L0_0(L1_1, 4)
                        L1_1 = pe
                        L1_1 = L1_1.mmap_va_nofastfail
                        L1_1 = L1_1(hstrlog[12].VA + 10, 4)
                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                          L1_1 = L1_1 - 1
                          L0_0 = L0_0(L1_1, 4)
                          L1_1 = pe
                          L1_1 = L1_1.mmap_va_nofastfail
                          L1_1 = L1_1(hstrlog[13].VA + 14, 4)
                          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                            L1_1 = L1_1 - 1
                            L0_0 = L0_0(L1_1, 4)
                            L1_1 = pe
                            L1_1 = L1_1.mmap_va_nofastfail
                            L1_1 = L1_1(hstrlog[14].VA + 6, 4)
                            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                              L1_1 = L1_1 - 1
                              L0_0 = L0_0(L1_1, 4)
                              L1_1 = pe
                              L1_1 = L1_1.mmap_va_nofastfail
                              L1_1 = L1_1(hstrlog[15].VA + 6, 4)
                              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1), string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1)))
                            else
                              L0_0 = hstrlog
                              L0_0 = L0_0[16]
                              L0_0 = L0_0.matched
                              if L0_0 then
                                L0_0 = pe
                                L0_0 = L0_0.mmap_va_nofastfail
                                L1_1 = hstrlog
                                L1_1 = L1_1[16]
                                L1_1 = L1_1.VA
                                L1_1 = L1_1 + 4
                                L0_0 = L0_0(L1_1, 4)
                                L1_1 = pe
                                L1_1 = L1_1.mmap_va_nofastfail
                                L1_1 = L1_1(hstrlog[16].VA + 9, 4)
                                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                              else
                                L0_0 = hstrlog
                                L0_0 = L0_0[17]
                                L0_0 = L0_0.matched
                                if L0_0 then
                                  L0_0 = pe
                                  L0_0 = L0_0.mmap_va_nofastfail
                                  L1_1 = hstrlog
                                  L1_1 = L1_1[17]
                                  L1_1 = L1_1.VA
                                  L1_1 = L1_1 + 4
                                  L0_0 = L0_0(L1_1, 4)
                                  L1_1 = pe
                                  L1_1 = L1_1.mmap_va_nofastfail
                                  L1_1 = L1_1(hstrlog[17].VA + 9, 4)
                                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
                                    L1_1 = L1_1 - 1
                                    L0_0 = L0_0(L1_1, 4)
                                    L1_1 = pe
                                    L1_1 = L1_1.mmap_va_nofastfail
                                    L1_1 = L1_1(hstrlog[18].VA + 4, 4)
                                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                  else
                                    L0_0 = hstrlog
                                    L0_0 = L0_0[19]
                                    L0_0 = L0_0.matched
                                    if L0_0 then
                                      L0_0 = pe
                                      L0_0 = L0_0.mmap_va_nofastfail
                                      L1_1 = hstrlog
                                      L1_1 = L1_1[19]
                                      L1_1 = L1_1.VA
                                      L1_1 = L1_1 - 1
                                      L0_0 = L0_0(L1_1, 4)
                                      L1_1 = pe
                                      L1_1 = L1_1.mmap_va_nofastfail
                                      L1_1 = L1_1(hstrlog[19].VA + 4, 4)
                                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                    else
                                      L0_0 = hstrlog
                                      L0_0 = L0_0[20]
                                      L0_0 = L0_0.matched
                                      if L0_0 then
                                        L0_0 = pe
                                        L0_0 = L0_0.mmap_va_nofastfail
                                        L1_1 = hstrlog
                                        L1_1 = L1_1[20]
                                        L1_1 = L1_1.VA
                                        L1_1 = L1_1 - 1
                                        L0_0 = L0_0(L1_1, 4)
                                        L1_1 = pe
                                        L1_1 = L1_1.mmap_va_nofastfail
                                        L1_1 = L1_1(hstrlog[20].VA + 4, 4)
                                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                      else
                                        L0_0 = hstrlog
                                        L0_0 = L0_0[21]
                                        L0_0 = L0_0.matched
                                        if L0_0 then
                                          L0_0 = pe
                                          L0_0 = L0_0.mmap_va_nofastfail
                                          L1_1 = hstrlog
                                          L1_1 = L1_1[21]
                                          L1_1 = L1_1.VA
                                          L1_1 = L1_1 - 1
                                          L0_0 = L0_0(L1_1, 4)
                                          L1_1 = pe
                                          L1_1 = L1_1.mmap_va_nofastfail
                                          L1_1 = L1_1(hstrlog[21].VA + 4, 4)
                                          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                        else
                                          L0_0 = hstrlog
                                          L0_0 = L0_0[22]
                                          L0_0 = L0_0.matched
                                          if L0_0 then
                                            L0_0 = pe
                                            L0_0 = L0_0.mmap_va_nofastfail
                                            L1_1 = hstrlog
                                            L1_1 = L1_1[22]
                                            L1_1 = L1_1.VA
                                            L1_1 = L1_1 + 4
                                            L0_0 = L0_0(L1_1, 4)
                                            L1_1 = pe
                                            L1_1 = L1_1.mmap_va_nofastfail
                                            L1_1 = L1_1(hstrlog[22].VA + 9, 4)
                                            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                          else
                                            L0_0 = hstrlog
                                            L0_0 = L0_0[23]
                                            L0_0 = L0_0.matched
                                            if L0_0 then
                                              L0_0 = pe
                                              L0_0 = L0_0.mmap_va_nofastfail
                                              L1_1 = hstrlog
                                              L1_1 = L1_1[23]
                                              L1_1 = L1_1.VA
                                              L1_1 = L1_1 + 4
                                              L0_0 = L0_0(L1_1, 4)
                                              L1_1 = pe
                                              L1_1 = L1_1.mmap_va_nofastfail
                                              L1_1 = L1_1(hstrlog[23].VA + 9, 4)
                                              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                            else
                                              L0_0 = hstrlog
                                              L0_0 = L0_0[24]
                                              L0_0 = L0_0.matched
                                              if L0_0 then
                                                L0_0 = pe
                                                L0_0 = L0_0.mmap_va_nofastfail
                                                L1_1 = hstrlog
                                                L1_1 = L1_1[24]
                                                L1_1 = L1_1.VA
                                                L1_1 = L1_1 + 4
                                                L0_0 = L0_0(L1_1, 4)
                                                L1_1 = pe
                                                L1_1 = L1_1.mmap_va_nofastfail
                                                L1_1 = L1_1(hstrlog[24].VA + 19, 4)
                                                if L0_0 == "" or L1_1 == "" then
                                                  L0_0 = mp.readfile(pe.foffset_va(hstrlog[24].VA + 4), 4)
                                                  L1_1 = mp.readfile(pe.foffset_va(hstrlog[24].VA + 19), 4)
                                                end
                                                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                              else
                                                L0_0 = hstrlog
                                                L0_0 = L0_0[25]
                                                L0_0 = L0_0.matched
                                                if L0_0 then
                                                  L0_0 = pe
                                                  L0_0 = L0_0.mmap_va_nofastfail
                                                  L1_1 = hstrlog
                                                  L1_1 = L1_1[25]
                                                  L1_1 = L1_1.VA
                                                  L1_1 = L1_1 - 3
                                                  L0_0 = L0_0(L1_1, 4)
                                                  L1_1 = pe
                                                  L1_1 = L1_1.mmap_va_nofastfail
                                                  L1_1 = L1_1(hstrlog[25].VA + 5, 4)
                                                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                else
                                                  L0_0 = hstrlog
                                                  L0_0 = L0_0[26]
                                                  L0_0 = L0_0.matched
                                                  if L0_0 then
                                                    L0_0 = pe
                                                    L0_0 = L0_0.mmap_va_nofastfail
                                                    L1_1 = hstrlog
                                                    L1_1 = L1_1[26]
                                                    L1_1 = L1_1.VA
                                                    L1_1 = L1_1 + 14
                                                    L0_0 = L0_0(L1_1, 4)
                                                    L1_1 = pe
                                                    L1_1 = L1_1.mmap_va_nofastfail
                                                    L1_1 = L1_1(hstrlog[26].VA + 19, 4)
                                                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                  else
                                                    L0_0 = hstrlog
                                                    L0_0 = L0_0[27]
                                                    L0_0 = L0_0.matched
                                                    if L0_0 then
                                                      L0_0 = mp
                                                      L0_0 = L0_0.readfile
                                                      L1_1 = pe
                                                      L1_1 = L1_1.foffset_va
                                                      L1_1 = L1_1(hstrlog[27].VA + 14)
                                                      L0_0 = L0_0(L1_1, 4)
                                                      L1_1 = mp
                                                      L1_1 = L1_1.readfile
                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[27].VA + 29), 4)
                                                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                    else
                                                      L0_0 = hstrlog
                                                      L0_0 = L0_0[29]
                                                      L0_0 = L0_0.matched
                                                      if L0_0 then
                                                        L0_0 = mp
                                                        L0_0 = L0_0.readfile
                                                        L1_1 = pe
                                                        L1_1 = L1_1.foffset_va
                                                        L1_1 = L1_1(hstrlog[29].VA + 14)
                                                        L0_0 = L0_0(L1_1, 4)
                                                        L1_1 = mp
                                                        L1_1 = L1_1.readfile
                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[29].VA + 29), 4)
                                                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1), string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1)))
                                                      else
                                                        L0_0 = hstrlog
                                                        L0_0 = L0_0[30]
                                                        L0_0 = L0_0.matched
                                                        if L0_0 then
                                                          L0_0 = pe
                                                          L0_0 = L0_0.mmap_va_nofastfail
                                                          L1_1 = hstrlog
                                                          L1_1 = L1_1[30]
                                                          L1_1 = L1_1.VA
                                                          L1_1 = L1_1 + 4
                                                          L0_0 = L0_0(L1_1, 4)
                                                          L1_1 = pe
                                                          L1_1 = L1_1.mmap_va_nofastfail
                                                          L1_1 = L1_1(hstrlog[30].VA + 11, 4)
                                                          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1), string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1)))
                                                        else
                                                          L0_0 = hstrlog
                                                          L0_0 = L0_0[31]
                                                          L0_0 = L0_0.matched
                                                          if L0_0 then
                                                            L0_0 = pe
                                                            L0_0 = L0_0.mmap_va_nofastfail
                                                            L1_1 = hstrlog
                                                            L1_1 = L1_1[31]
                                                            L1_1 = L1_1.VA
                                                            L1_1 = L1_1 + 6
                                                            L0_0 = L0_0(L1_1, 4)
                                                            L1_1 = pe
                                                            L1_1 = L1_1.mmap_va_nofastfail
                                                            L1_1 = L1_1(hstrlog[31].VA + 12, 4)
                                                            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                          else
                                                            L0_0 = hstrlog
                                                            L0_0 = L0_0[32]
                                                            L0_0 = L0_0.matched
                                                            if L0_0 then
                                                              L0_0 = pe
                                                              L0_0 = L0_0.mmap_va_nofastfail
                                                              L1_1 = hstrlog
                                                              L1_1 = L1_1[32]
                                                              L1_1 = L1_1.VA
                                                              L1_1 = L1_1 + 6
                                                              L0_0 = L0_0(L1_1, 4)
                                                              L1_1 = pe
                                                              L1_1 = L1_1.mmap_va_nofastfail
                                                              L1_1 = L1_1(hstrlog[32].VA + 12, 4)
                                                              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                            else
                                                              L0_0 = hstrlog
                                                              L0_0 = L0_0[33]
                                                              L0_0 = L0_0.matched
                                                              if L0_0 then
                                                                L0_0 = pe
                                                                L0_0 = L0_0.mmap_va_nofastfail
                                                                L1_1 = hstrlog
                                                                L1_1 = L1_1[33]
                                                                L1_1 = L1_1.VA
                                                                L1_1 = L1_1 + 4
                                                                L0_0 = L0_0(L1_1, 4)
                                                                L1_1 = pe
                                                                L1_1 = L1_1.mmap_va_nofastfail
                                                                L1_1 = L1_1(hstrlog[33].VA + 11, 4)
                                                                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                              else
                                                                L0_0 = hstrlog
                                                                L0_0 = L0_0[34]
                                                                L0_0 = L0_0.matched
                                                                if L0_0 then
                                                                  L0_0 = pe
                                                                  L0_0 = L0_0.mmap_va_nofastfail
                                                                  L1_1 = hstrlog
                                                                  L1_1 = L1_1[34]
                                                                  L1_1 = L1_1.VA
                                                                  L1_1 = L1_1 - 19
                                                                  L0_0 = L0_0(L1_1, 4)
                                                                  L1_1 = pe
                                                                  L1_1 = L1_1.mmap_va_nofastfail
                                                                  L1_1 = L1_1(hstrlog[34].VA - 12, 4)
                                                                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                else
                                                                  L0_0 = hstrlog
                                                                  L0_0 = L0_0[35]
                                                                  L0_0 = L0_0.matched
                                                                  if L0_0 then
                                                                    L0_0 = pe
                                                                    L0_0 = L0_0.mmap_va_nofastfail
                                                                    L1_1 = hstrlog
                                                                    L1_1 = L1_1[35]
                                                                    L1_1 = L1_1.VA
                                                                    L1_1 = L1_1 + 10
                                                                    L0_0 = L0_0(L1_1, 4)
                                                                    L1_1 = pe
                                                                    L1_1 = L1_1.mmap_va_nofastfail
                                                                    L1_1 = L1_1(hstrlog[35].VA + 15, 4)
                                                                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                  else
                                                                    L0_0 = hstrlog
                                                                    L0_0 = L0_0[36]
                                                                    L0_0 = L0_0.matched
                                                                    if L0_0 then
                                                                      L0_0 = pe
                                                                      L0_0 = L0_0.mmap_va_nofastfail
                                                                      L1_1 = hstrlog
                                                                      L1_1 = L1_1[36]
                                                                      L1_1 = L1_1.VA
                                                                      L1_1 = L1_1 + 10
                                                                      L0_0 = L0_0(L1_1, 4)
                                                                      L1_1 = pe
                                                                      L1_1 = L1_1.mmap_va_nofastfail
                                                                      L1_1 = L1_1(hstrlog[36].VA + 15, 4)
                                                                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                    else
                                                                      L0_0 = hstrlog
                                                                      L0_0 = L0_0[37]
                                                                      L0_0 = L0_0.matched
                                                                      if L0_0 then
                                                                        L0_0 = pe
                                                                        L0_0 = L0_0.mmap_va_nofastfail
                                                                        L1_1 = hstrlog
                                                                        L1_1 = L1_1[37]
                                                                        L1_1 = L1_1.VA
                                                                        L1_1 = L1_1 + 5
                                                                        L0_0 = L0_0(L1_1, 4)
                                                                        L1_1 = pe
                                                                        L1_1 = L1_1.mmap_va_nofastfail
                                                                        L1_1 = L1_1(hstrlog[37].VA + 11, 4)
                                                                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                      else
                                                                        L0_0 = hstrlog
                                                                        L0_0 = L0_0[38]
                                                                        L0_0 = L0_0.matched
                                                                        if L0_0 then
                                                                          L0_0 = pe
                                                                          L0_0 = L0_0.mmap_va_nofastfail
                                                                          L1_1 = hstrlog
                                                                          L1_1 = L1_1[38]
                                                                          L1_1 = L1_1.VA
                                                                          L1_1 = L1_1 + 5
                                                                          L0_0 = L0_0(L1_1, 4)
                                                                          L1_1 = pe
                                                                          L1_1 = L1_1.mmap_va_nofastfail
                                                                          L1_1 = L1_1(hstrlog[38].VA + 12, 4)
                                                                          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                        else
                                                                          L0_0 = hstrlog
                                                                          L0_0 = L0_0[39]
                                                                          L0_0 = L0_0.matched
                                                                          if L0_0 then
                                                                            L0_0 = pe
                                                                            L0_0 = L0_0.mmap_va_nofastfail
                                                                            L1_1 = hstrlog
                                                                            L1_1 = L1_1[39]
                                                                            L1_1 = L1_1.VA
                                                                            L1_1 = L1_1 + 5
                                                                            L0_0 = L0_0(L1_1, 4)
                                                                            L1_1 = pe
                                                                            L1_1 = L1_1.mmap_va_nofastfail
                                                                            L1_1 = L1_1(hstrlog[39].VA + 21, 4)
                                                                            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                          else
                                                                            L0_0 = hstrlog
                                                                            L0_0 = L0_0[40]
                                                                            L0_0 = L0_0.matched
                                                                            if L0_0 then
                                                                              L0_0 = pe
                                                                              L0_0 = L0_0.mmap_va_nofastfail
                                                                              L1_1 = hstrlog
                                                                              L1_1 = L1_1[40]
                                                                              L1_1 = L1_1.VA
                                                                              L1_1 = L1_1 + 15
                                                                              L0_0 = L0_0(L1_1, 4)
                                                                              L1_1 = pe
                                                                              L1_1 = L1_1.mmap_va_nofastfail
                                                                              L1_1 = L1_1(hstrlog[40].VA + 31, 4)
                                                                              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                            else
                                                                              L0_0 = hstrlog
                                                                              L0_0 = L0_0[41]
                                                                              L0_0 = L0_0.matched
                                                                              if L0_0 then
                                                                                L0_0 = pe
                                                                                L0_0 = L0_0.mmap_va_nofastfail
                                                                                L1_1 = hstrlog
                                                                                L1_1 = L1_1[41]
                                                                                L1_1 = L1_1.VA
                                                                                L1_1 = L1_1 + 4
                                                                                L0_0 = L0_0(L1_1, 4)
                                                                                L1_1 = pe
                                                                                L1_1 = L1_1.mmap_va_nofastfail
                                                                                L1_1 = L1_1(hstrlog[41].VA + 15, 4)
                                                                                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                              else
                                                                                L0_0 = hstrlog
                                                                                L0_0 = L0_0[42]
                                                                                L0_0 = L0_0.matched
                                                                                if L0_0 then
                                                                                  L0_0 = pe
                                                                                  L0_0 = L0_0.mmap_va_nofastfail
                                                                                  L1_1 = hstrlog
                                                                                  L1_1 = L1_1[42]
                                                                                  L1_1 = L1_1.VA
                                                                                  L1_1 = L1_1 + 12
                                                                                  L0_0 = L0_0(L1_1, 4)
                                                                                  L1_1 = pe
                                                                                  L1_1 = L1_1.mmap_va_nofastfail
                                                                                  L1_1 = L1_1(hstrlog[42].VA + 7, 4)
                                                                                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                else
                                                                                  L0_0 = hstrlog
                                                                                  L0_0 = L0_0[43]
                                                                                  L0_0 = L0_0.matched
                                                                                  if L0_0 then
                                                                                    L0_0 = mp
                                                                                    L0_0 = L0_0.readfile
                                                                                    L1_1 = pe
                                                                                    L1_1 = L1_1.foffset_va
                                                                                    L1_1 = L1_1(hstrlog[43].VA + 5)
                                                                                    L0_0 = L0_0(L1_1, 4)
                                                                                    L1_1 = mp
                                                                                    L1_1 = L1_1.readfile
                                                                                    L1_1 = L1_1(pe.foffset_va(hstrlog[43].VA + 12), 4)
                                                                                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                  else
                                                                                    L0_0 = hstrlog
                                                                                    L0_0 = L0_0[44]
                                                                                    L0_0 = L0_0.matched
                                                                                    if L0_0 then
                                                                                      L0_0 = mp
                                                                                      L0_0 = L0_0.readfile
                                                                                      L1_1 = pe
                                                                                      L1_1 = L1_1.foffset_va
                                                                                      L1_1 = L1_1(hstrlog[44].VA + 4)
                                                                                      L0_0 = L0_0(L1_1, 4)
                                                                                      L1_1 = mp
                                                                                      L1_1 = L1_1.readfile
                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[44].VA + 19), 4)
                                                                                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                    else
                                                                                      L0_0 = hstrlog
                                                                                      L0_0 = L0_0[46]
                                                                                      L0_0 = L0_0.matched
                                                                                      if L0_0 then
                                                                                        L0_0 = mp
                                                                                        L0_0 = L0_0.readfile
                                                                                        L1_1 = pe
                                                                                        L1_1 = L1_1.foffset_va
                                                                                        L1_1 = L1_1(hstrlog[46].VA - 1)
                                                                                        L0_0 = L0_0(L1_1, 4)
                                                                                        L1_1 = mp
                                                                                        L1_1 = L1_1.readfile
                                                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[46].VA + 6), 4)
                                                                                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                      else
                                                                                        L0_0 = hstrlog
                                                                                        L0_0 = L0_0[47]
                                                                                        L0_0 = L0_0.matched
                                                                                        if L0_0 then
                                                                                          L0_0 = mp
                                                                                          L0_0 = L0_0.readfile
                                                                                          L1_1 = pe
                                                                                          L1_1 = L1_1.foffset_va
                                                                                          L1_1 = L1_1(hstrlog[47].VA + 5)
                                                                                          L0_0 = L0_0(L1_1, 4)
                                                                                          L1_1 = mp
                                                                                          L1_1 = L1_1.readfile
                                                                                          L1_1 = L1_1(pe.foffset_va(hstrlog[47].VA + 12), 4)
                                                                                          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                        else
                                                                                          L0_0 = hstrlog
                                                                                          L0_0 = L0_0[48]
                                                                                          L0_0 = L0_0.matched
                                                                                          if L0_0 then
                                                                                            L0_0 = mp
                                                                                            L0_0 = L0_0.readfile
                                                                                            L1_1 = pe
                                                                                            L1_1 = L1_1.foffset_va
                                                                                            L1_1 = L1_1(hstrlog[48].VA + 4)
                                                                                            L0_0 = L0_0(L1_1, 4)
                                                                                            L1_1 = mp
                                                                                            L1_1 = L1_1.readfile
                                                                                            L1_1 = L1_1(pe.foffset_va(hstrlog[48].VA + 11), 4)
                                                                                            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                          else
                                                                                            L0_0 = hstrlog
                                                                                            L0_0 = L0_0[49]
                                                                                            L0_0 = L0_0.matched
                                                                                            if L0_0 then
                                                                                              L0_0 = mp
                                                                                              L0_0 = L0_0.readfile
                                                                                              L1_1 = pe
                                                                                              L1_1 = L1_1.foffset_va
                                                                                              L1_1 = L1_1(hstrlog[49].VA - 11)
                                                                                              L0_0 = L0_0(L1_1, 4)
                                                                                              L1_1 = mp
                                                                                              L1_1 = L1_1.readfile
                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[49].VA - 4), 4)
                                                                                              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                            else
                                                                                              L0_0 = hstrlog
                                                                                              L0_0 = L0_0[50]
                                                                                              L0_0 = L0_0.matched
                                                                                              if L0_0 then
                                                                                                L0_0 = mp
                                                                                                L0_0 = L0_0.readfile
                                                                                                L1_1 = pe
                                                                                                L1_1 = L1_1.foffset_va
                                                                                                L1_1 = L1_1(hstrlog[50].VA + 10)
                                                                                                L0_0 = L0_0(L1_1, 4)
                                                                                                L1_1 = mp
                                                                                                L1_1 = L1_1.readfile
                                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[50].VA + 15), 4)
                                                                                                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                              else
                                                                                                L0_0 = hstrlog
                                                                                                L0_0 = L0_0[51]
                                                                                                L0_0 = L0_0.matched
                                                                                                if L0_0 then
                                                                                                  L0_0 = mp
                                                                                                  L0_0 = L0_0.readfile
                                                                                                  L1_1 = pe
                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                  L1_1 = L1_1(hstrlog[51].VA - 4)
                                                                                                  L0_0 = L0_0(L1_1, 4)
                                                                                                  L1_1 = mp
                                                                                                  L1_1 = L1_1.set_mpattribute
                                                                                                  L1_1(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", 0, 0, 0, 0, string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1)))
                                                                                                else
                                                                                                  L0_0 = hstrlog
                                                                                                  L0_0 = L0_0[52]
                                                                                                  L0_0 = L0_0.matched
                                                                                                  if L0_0 then
                                                                                                    L0_0 = mp
                                                                                                    L0_0 = L0_0.readfile
                                                                                                    L1_1 = pe
                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                    L1_1 = L1_1(hstrlog[52].VA + 6)
                                                                                                    L0_0 = L0_0(L1_1, 4)
                                                                                                    L1_1 = mp
                                                                                                    L1_1 = L1_1.readfile
                                                                                                    L1_1 = L1_1(pe.foffset_va(hstrlog[52].VA + 13), 4)
                                                                                                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                  else
                                                                                                    L0_0 = hstrlog
                                                                                                    L0_0 = L0_0[53]
                                                                                                    L0_0 = L0_0.matched
                                                                                                    if L0_0 then
                                                                                                      L0_0 = mp
                                                                                                      L0_0 = L0_0.readfile
                                                                                                      L1_1 = pe
                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                      L1_1 = L1_1(hstrlog[53].VA + 4)
                                                                                                      L0_0 = L0_0(L1_1, 4)
                                                                                                      L1_1 = mp
                                                                                                      L1_1 = L1_1.readfile
                                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[53].VA + 11), 4)
                                                                                                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                    else
                                                                                                      L0_0 = hstrlog
                                                                                                      L0_0 = L0_0[54]
                                                                                                      L0_0 = L0_0.matched
                                                                                                      if L0_0 then
                                                                                                        L0_0 = mp
                                                                                                        L0_0 = L0_0.readfile
                                                                                                        L1_1 = pe
                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                        L1_1 = L1_1(hstrlog[54].VA + 10)
                                                                                                        L0_0 = L0_0(L1_1, 4)
                                                                                                        L1_1 = mp
                                                                                                        L1_1 = L1_1.readfile
                                                                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[54].VA + 16), 4)
                                                                                                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                      else
                                                                                                        L0_0 = hstrlog
                                                                                                        L0_0 = L0_0[59]
                                                                                                        L0_0 = L0_0.matched
                                                                                                        if L0_0 then
                                                                                                          L0_0 = map_read
                                                                                                          L1_1 = hstrlog
                                                                                                          L1_1 = L1_1[59]
                                                                                                          L1_1 = L1_1.VA
                                                                                                          L1_1 = L1_1 - 11
                                                                                                          L0_0 = L0_0(L1_1, 4)
                                                                                                          L1_1 = map_read
                                                                                                          L1_1 = L1_1(hstrlog[59].VA - 4, 4)
                                                                                                          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                        else
                                                                                                          L0_0 = hstrlog
                                                                                                          L0_0 = L0_0[55]
                                                                                                          L0_0 = L0_0.matched
                                                                                                          if L0_0 then
                                                                                                            L0_0 = mp
                                                                                                            L0_0 = L0_0.readfile
                                                                                                            L1_1 = pe
                                                                                                            L1_1 = L1_1.foffset_va
                                                                                                            L1_1 = L1_1(hstrlog[55].VA + 4)
                                                                                                            L0_0 = L0_0(L1_1, 4)
                                                                                                            L1_1 = mp
                                                                                                            L1_1 = L1_1.readfile
                                                                                                            L1_1 = L1_1(pe.foffset_va(hstrlog[55].VA + 11), 4)
                                                                                                            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                          else
                                                                                                            L0_0 = hstrlog
                                                                                                            L0_0 = L0_0[56]
                                                                                                            L0_0 = L0_0.matched
                                                                                                            if L0_0 then
                                                                                                              L0_0 = mp
                                                                                                              L0_0 = L0_0.readfile
                                                                                                              L1_1 = pe
                                                                                                              L1_1 = L1_1.foffset_va
                                                                                                              L1_1 = L1_1(hstrlog[56].VA + 4)
                                                                                                              L0_0 = L0_0(L1_1, 4)
                                                                                                              L1_1 = mp
                                                                                                              L1_1 = L1_1.readfile
                                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[56].VA + 11), 4)
                                                                                                              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                            else
                                                                                                              L0_0 = hstrlog
                                                                                                              L0_0 = L0_0[57]
                                                                                                              L0_0 = L0_0.matched
                                                                                                              if L0_0 then
                                                                                                                L0_0 = mp
                                                                                                                L0_0 = L0_0.readfile
                                                                                                                L1_1 = pe
                                                                                                                L1_1 = L1_1.foffset_va
                                                                                                                L1_1 = L1_1(hstrlog[57].VA + 4)
                                                                                                                L0_0 = L0_0(L1_1, 4)
                                                                                                                L1_1 = mp
                                                                                                                L1_1 = L1_1.readfile
                                                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[57].VA + 11), 4)
                                                                                                                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                              else
                                                                                                                L0_0 = hstrlog
                                                                                                                L0_0 = L0_0[58]
                                                                                                                L0_0 = L0_0.matched
                                                                                                                if L0_0 then
                                                                                                                  L0_0 = mp
                                                                                                                  L0_0 = L0_0.readfile
                                                                                                                  L1_1 = pe
                                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                                  L1_1 = L1_1(hstrlog[58].VA - 4)
                                                                                                                  L0_0 = L0_0(L1_1, 4)
                                                                                                                  L1_1 = mp
                                                                                                                  L1_1 = L1_1.set_mpattribute
                                                                                                                  L1_1(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", 0, 0, 0, 0, string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1)))
                                                                                                                else
                                                                                                                  L0_0 = hstrlog
                                                                                                                  L0_0 = L0_0[60]
                                                                                                                  L0_0 = L0_0.matched
                                                                                                                  if L0_0 then
                                                                                                                    L0_0 = mp
                                                                                                                    L0_0 = L0_0.readfile
                                                                                                                    L1_1 = pe
                                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                                    L1_1 = L1_1(hstrlog[60].VA + 6)
                                                                                                                    L0_0 = L0_0(L1_1, 4)
                                                                                                                    L1_1 = mp
                                                                                                                    L1_1 = L1_1.set_mpattribute
                                                                                                                    L1_1(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", 0, 0, 0, 0, string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1)))
                                                                                                                  else
                                                                                                                    L0_0 = hstrlog
                                                                                                                    L0_0 = L0_0[45]
                                                                                                                    L0_0 = L0_0.matched
                                                                                                                    if L0_0 then
                                                                                                                      L0_0 = mp
                                                                                                                      L0_0 = L0_0.readfile
                                                                                                                      L1_1 = pe
                                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                                      L1_1 = L1_1(hstrlog[45].VA + 4)
                                                                                                                      L0_0 = L0_0(L1_1, 4)
                                                                                                                      L1_1 = mp
                                                                                                                      L1_1 = L1_1.readfile
                                                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[45].VA + 9), 4)
                                                                                                                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
                                                                                                                    else
                                                                                                                      L0_0 = hstrlog
                                                                                                                      L0_0 = L0_0[28]
                                                                                                                      L0_0 = L0_0.matched
                                                                                                                      if L0_0 then
                                                                                                                        L0_0 = mp
                                                                                                                        L0_0 = L0_0.readfile
                                                                                                                        L1_1 = pe
                                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                                        L1_1 = L1_1(hstrlog[28].VA + 9)
                                                                                                                        L0_0 = L0_0(L1_1, 4)
                                                                                                                        L1_1 = mp
                                                                                                                        L1_1 = L1_1.readfile
                                                                                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[28].VA + 4), 4)
                                                                                                                        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", string.byte(L0_0, 4), string.byte(L0_0, 3), string.byte(L0_0, 2), string.byte(L0_0, 1), string.byte(L1_1, 4), string.byte(L1_1, 3), string.byte(L1_1, 2), string.byte(L1_1, 1)))
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
