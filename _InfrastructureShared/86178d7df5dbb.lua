local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_6EF2"
  L0_0(L1_1)
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[4]
    L0_0 = L0_0.matched
  else
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.set_mpattribute
      L1_1 = "HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_6FF3"
      L0_0(L1_1)
  end
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
      L0_0 = L0_0(L1_1, 1)
      L1_1 = pe
      L1_1 = L1_1.mmap_va_nofastfail
      L1_1 = L1_1(hstrlog[3].VA + 7, 1)
      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
    else
      L0_0 = hstrlog
      L0_0 = L0_0[5]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.set_mpattribute
        L1_1 = "HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_3CBE"
        L0_0(L1_1)
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
          L1_1 = L1_1 + 11
          L0_0 = L0_0(L1_1, 1)
          L1_1 = pe
          L1_1 = L1_1.mmap_va_nofastfail
          L1_1 = L1_1(hstrlog[6].VA + 14, 1)
          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
        else
          L0_0 = hstrlog
          L0_0 = L0_0[7]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = mp
            L0_0 = L0_0.set_mpattribute
            L1_1 = "HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_73F7"
            L0_0(L1_1)
          else
            L0_0 = hstrlog
            L0_0 = L0_0[8]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = mp
              L0_0 = L0_0.set_mpattribute
              L1_1 = "HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_74F8"
              L0_0(L1_1)
            else
              L0_0 = hstrlog
              L0_0 = L0_0[9]
              L0_0 = L0_0.matched
              if L0_0 then
                L0_0 = mp
                L0_0 = L0_0.set_mpattribute
                L1_1 = "HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_77FB"
                L0_0(L1_1)
              else
                L0_0 = hstrlog
                L0_0 = L0_0[10]
                L0_0 = L0_0.matched
                if L0_0 then
                  L0_0 = mp
                  L0_0 = L0_0.set_mpattribute
                  L1_1 = "HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_C3B2"
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
                    L1_1 = L1_1 - 3
                    L0_0 = L0_0(L1_1, 1)
                    L1_1 = pe
                    L1_1 = L1_1.mmap_va_nofastfail
                    L1_1 = L1_1(hstrlog[11].VA - 1, 1)
                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
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
                      L1_1 = L1_1 + 4
                      L0_0 = L0_0(L1_1, 1)
                      L1_1 = mp
                      L1_1 = L1_1.set_mpattribute
                      L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), 255))
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
                        L1_1 = L1_1 + 4
                        L0_0 = L0_0(L1_1, 1)
                        L1_1 = mp
                        L1_1 = L1_1.set_mpattribute
                        L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), 1))
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
                          L1_1 = L1_1 + 4
                          L0_0 = L0_0(L1_1, 1)
                          L1_1 = pe
                          L1_1 = L1_1.mmap_va_nofastfail
                          L1_1 = L1_1(hstrlog[14].VA + 7, 1)
                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                            L1_1 = L1_1 + 4
                            L0_0 = L0_0(L1_1, 1)
                            L1_1 = pe
                            L1_1 = L1_1.mmap_va_nofastfail
                            L1_1 = L1_1(hstrlog[15].VA + 7, 1)
                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                              L0_0 = L0_0(L1_1, 1)
                              L1_1 = pe
                              L1_1 = L1_1.mmap_va_nofastfail
                              L1_1 = L1_1(hstrlog[16].VA + 6, 1)
                              if L0_0 == "" or L1_1 == "" then
                                L0_0 = mp.readfile(pe.foffset_va(hstrlog[16].VA + 4), 1)
                                L1_1 = mp.readfile(pe.foffset_va(hstrlog[16].VA + 6), 1)
                              end
                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                L1_1 = L1_1 + 8
                                L0_0 = L0_0(L1_1, 1)
                                L1_1 = pe
                                L1_1 = L1_1.mmap_va_nofastfail
                                L1_1 = L1_1(hstrlog[18].VA + 11, 1)
                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                  L1_1 = L1_1 + 10
                                  L0_0 = L0_0(L1_1, 1)
                                  L1_1 = pe
                                  L1_1 = L1_1.mmap_va_nofastfail
                                  L1_1 = L1_1(hstrlog[19].VA + 12, 1)
                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                    L1_1 = L1_1 + 14
                                    L0_0 = L0_0(L1_1, 1)
                                    L1_1 = pe
                                    L1_1 = L1_1.mmap_va_nofastfail
                                    L1_1 = L1_1(hstrlog[20].VA + 20, 1)
                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                      L1_1 = L1_1 + 16
                                      L0_0 = L0_0(L1_1, 1)
                                      L1_1 = pe
                                      L1_1 = L1_1.mmap_va_nofastfail
                                      L1_1 = L1_1(hstrlog[21].VA + 22, 1)
                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                        L1_1 = L1_1 + 13
                                        L0_0 = L0_0(L1_1, 1)
                                        L1_1 = pe
                                        L1_1 = L1_1.mmap_va_nofastfail
                                        L1_1 = L1_1(hstrlog[22].VA + 16, 1)
                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                          L1_1 = L1_1 + 5
                                          L0_0 = L0_0(L1_1, 1)
                                          L1_1 = pe
                                          L1_1 = L1_1.mmap_va_nofastfail
                                          L1_1 = L1_1(hstrlog[23].VA + 8, 1)
                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                            L0_0 = L0_0(L1_1, 1)
                                            L1_1 = pe
                                            L1_1 = L1_1.mmap_va_nofastfail
                                            L1_1 = L1_1(hstrlog[24].VA + 6, 1)
                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                              L1_1 = L1_1 + 4
                                              L0_0 = L0_0(L1_1, 1)
                                              L1_1 = pe
                                              L1_1 = L1_1.mmap_va_nofastfail
                                              L1_1 = L1_1(hstrlog[25].VA + 19, 1)
                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                L0_0 = L0_0(L1_1, 1)
                                                L1_1 = pe
                                                L1_1 = L1_1.mmap_va_nofastfail
                                                L1_1 = L1_1(hstrlog[26].VA + 26, 1)
                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                              else
                                                L0_0 = hstrlog
                                                L0_0 = L0_0[27]
                                                L0_0 = L0_0.matched
                                                if L0_0 then
                                                  L0_0 = pe
                                                  L0_0 = L0_0.mmap_va_nofastfail
                                                  L1_1 = hstrlog
                                                  L1_1 = L1_1[27]
                                                  L1_1 = L1_1.VA
                                                  L1_1 = L1_1 + 4
                                                  L0_0 = L0_0(L1_1, 1)
                                                  L1_1 = pe
                                                  L1_1 = L1_1.mmap_va_nofastfail
                                                  L1_1 = L1_1(hstrlog[27].VA + 6, 1)
                                                  if L0_0 == "" or L1_1 == "" then
                                                    L0_0 = mp.readfile(pe.foffset_va(hstrlog[27].VA + 4), 1)
                                                    L1_1 = mp.readfile(pe.foffset_va(hstrlog[27].VA + 6), 1)
                                                  end
                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                else
                                                  L0_0 = hstrlog
                                                  L0_0 = L0_0[28]
                                                  L0_0 = L0_0.matched
                                                  if L0_0 then
                                                    L0_0 = pe
                                                    L0_0 = L0_0.mmap_va_nofastfail
                                                    L1_1 = hstrlog
                                                    L1_1 = L1_1[28]
                                                    L1_1 = L1_1.VA
                                                    L1_1 = L1_1 + 4
                                                    L0_0 = L0_0(L1_1, 1)
                                                    L1_1 = pe
                                                    L1_1 = L1_1.mmap_va_nofastfail
                                                    L1_1 = L1_1(hstrlog[28].VA + 9, 1)
                                                    if L0_0 == "" or L1_1 == "" then
                                                      L0_0 = mp.readfile(pe.foffset_va(hstrlog[28].VA + 4), 1)
                                                      L1_1 = mp.readfile(pe.foffset_va(hstrlog[28].VA + 9), 1)
                                                    end
                                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                  else
                                                    L0_0 = hstrlog
                                                    L0_0 = L0_0[29]
                                                    L0_0 = L0_0.matched
                                                    if L0_0 then
                                                      L0_0 = pe
                                                      L0_0 = L0_0.mmap_va_nofastfail
                                                      L1_1 = hstrlog
                                                      L1_1 = L1_1[29]
                                                      L1_1 = L1_1.VA
                                                      L1_1 = L1_1 + 14
                                                      L0_0 = L0_0(L1_1, 1)
                                                      L1_1 = pe
                                                      L1_1 = L1_1.mmap_va_nofastfail
                                                      L1_1 = L1_1(hstrlog[29].VA + 26, 1)
                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                        L0_0 = L0_0(L1_1, 1)
                                                        L1_1 = pe
                                                        L1_1 = L1_1.mmap_va_nofastfail
                                                        L1_1 = L1_1(hstrlog[30].VA + 6, 1)
                                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                          L1_1 = L1_1 + 11
                                                          L0_0 = L0_0(L1_1, 1)
                                                          L1_1 = pe
                                                          L1_1 = L1_1.mmap_va_nofastfail
                                                          L1_1 = L1_1(hstrlog[31].VA + 13, 1)
                                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                            L1_1 = L1_1 + 4
                                                            L0_0 = L0_0(L1_1, 1)
                                                            L1_1 = pe
                                                            L1_1 = L1_1.mmap_va_nofastfail
                                                            L1_1 = L1_1(hstrlog[32].VA + 9, 1)
                                                            if L0_0 == "" or L1_1 == "" then
                                                              L0_0 = mp.readfile(pe.foffset_va(hstrlog[32].VA + 4), 1)
                                                              L1_1 = mp.readfile(pe.foffset_va(hstrlog[32].VA + 9), 1)
                                                            end
                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                              L1_1 = L1_1 + 5
                                                              L0_0 = L0_0(L1_1, 1)
                                                              L1_1 = pe
                                                              L1_1 = L1_1.mmap_va_nofastfail
                                                              L1_1 = L1_1(hstrlog[33].VA + 11, 1)
                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                                L1_1 = L1_1 + 4
                                                                L0_0 = L0_0(L1_1, 1)
                                                                L1_1 = pe
                                                                L1_1 = L1_1.mmap_va_nofastfail
                                                                L1_1 = L1_1(hstrlog[34].VA + 29, 1)
                                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                                  L1_1 = L1_1 + 5
                                                                  L0_0 = L0_0(L1_1, 1)
                                                                  L1_1 = pe
                                                                  L1_1 = L1_1.mmap_va_nofastfail
                                                                  L1_1 = L1_1(hstrlog[35].VA + 7, 1)
                                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                                    L1_1 = L1_1 + 15
                                                                    L0_0 = L0_0(L1_1, 1)
                                                                    L1_1 = pe
                                                                    L1_1 = L1_1.mmap_va_nofastfail
                                                                    L1_1 = L1_1(hstrlog[36].VA + 21, 1)
                                                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                                      L0_0 = L0_0(L1_1, 1)
                                                                      L1_1 = pe
                                                                      L1_1 = L1_1.mmap_va_nofastfail
                                                                      L1_1 = L1_1(hstrlog[37].VA + 7, 1)
                                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                                        L1_1 = L1_1 + 11
                                                                        L0_0 = L0_0(L1_1, 1)
                                                                        L1_1 = pe
                                                                        L1_1 = L1_1.mmap_va_nofastfail
                                                                        L1_1 = L1_1(hstrlog[38].VA + 13, 1)
                                                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                      else
                                                                        L0_0 = hstrlog
                                                                        L0_0 = L0_0[39]
                                                                        L0_0 = L0_0.matched
                                                                        if L0_0 then
                                                                          L0_0 = mp
                                                                          L0_0 = L0_0.readfile
                                                                          L1_1 = pe
                                                                          L1_1 = L1_1.foffset_va
                                                                          L1_1 = L1_1(hstrlog[39].VA + 6)
                                                                          L0_0 = L0_0(L1_1, 1)
                                                                          L1_1 = mp
                                                                          L1_1 = L1_1.readfile
                                                                          L1_1 = L1_1(pe.foffset_va(hstrlog[39].VA + 9), 1)
                                                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
                                                                            L1_1 = L1_1 + 12
                                                                            L0_0 = L0_0(L1_1, 1)
                                                                            L1_1 = pe
                                                                            L1_1 = L1_1.mmap_va_nofastfail
                                                                            L1_1 = L1_1(hstrlog[40].VA + 24, 1)
                                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                          else
                                                                            L0_0 = hstrlog
                                                                            L0_0 = L0_0[41]
                                                                            L0_0 = L0_0.matched
                                                                            if L0_0 then
                                                                              L0_0 = mp
                                                                              L0_0 = L0_0.readfile
                                                                              L1_1 = pe
                                                                              L1_1 = L1_1.foffset_va
                                                                              L1_1 = L1_1(hstrlog[41].VA + 5)
                                                                              L0_0 = L0_0(L1_1, 1)
                                                                              L1_1 = mp
                                                                              L1_1 = L1_1.readfile
                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[41].VA + 7), 1)
                                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                            else
                                                                              L0_0 = hstrlog
                                                                              L0_0 = L0_0[42]
                                                                              L0_0 = L0_0.matched
                                                                              if L0_0 then
                                                                                L0_0 = mp
                                                                                L0_0 = L0_0.readfile
                                                                                L1_1 = pe
                                                                                L1_1 = L1_1.foffset_va
                                                                                L1_1 = L1_1(hstrlog[42].VA + 13)
                                                                                L0_0 = L0_0(L1_1, 1)
                                                                                L1_1 = mp
                                                                                L1_1 = L1_1.readfile
                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[42].VA + 15), 1)
                                                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                              else
                                                                                L0_0 = hstrlog
                                                                                L0_0 = L0_0[43]
                                                                                L0_0 = L0_0.matched
                                                                                if L0_0 then
                                                                                  L0_0 = mp
                                                                                  L0_0 = L0_0.readfile
                                                                                  L1_1 = pe
                                                                                  L1_1 = L1_1.foffset_va
                                                                                  L1_1 = L1_1(hstrlog[43].VA + 4)
                                                                                  L0_0 = L0_0(L1_1, 1)
                                                                                  L1_1 = mp
                                                                                  L1_1 = L1_1.readfile
                                                                                  L1_1 = L1_1(pe.foffset_va(hstrlog[43].VA + 7), 1)
                                                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                else
                                                                                  L0_0 = hstrlog
                                                                                  L0_0 = L0_0[44]
                                                                                  L0_0 = L0_0.matched
                                                                                  if L0_0 then
                                                                                    L0_0 = mp
                                                                                    L0_0 = L0_0.set_mpattribute
                                                                                    L1_1 = string
                                                                                    L1_1 = L1_1.format
                                                                                    L1_1 = L1_1("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 66, 106)
                                                                                    L0_0(L1_1, L1_1("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 66, 106))
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
                                                                                      L0_0 = L0_0(L1_1, 1)
                                                                                      L1_1 = mp
                                                                                      L1_1 = L1_1.readfile
                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[45].VA + 6), 1)
                                                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                    else
                                                                                      L0_0 = hstrlog
                                                                                      L0_0 = L0_0[46]
                                                                                      L0_0 = L0_0.matched
                                                                                      if L0_0 then
                                                                                        L0_0 = mp
                                                                                        L0_0 = L0_0.set_mpattribute
                                                                                        L1_1 = string
                                                                                        L1_1 = L1_1.format
                                                                                        L1_1 = L1_1("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 109, 109)
                                                                                        L0_0(L1_1, L1_1("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 109, 109))
                                                                                      else
                                                                                        L0_0 = hstrlog
                                                                                        L0_0 = L0_0[47]
                                                                                        L0_0 = L0_0.matched
                                                                                        if L0_0 then
                                                                                          L0_0 = mp
                                                                                          L0_0 = L0_0.readfile
                                                                                          L1_1 = pe
                                                                                          L1_1 = L1_1.foffset_va
                                                                                          L1_1 = L1_1(hstrlog[47].VA + 28)
                                                                                          L0_0 = L0_0(L1_1, 1)
                                                                                          L1_1 = mp
                                                                                          L1_1 = L1_1.readfile
                                                                                          L1_1 = L1_1(pe.foffset_va(hstrlog[47].VA + 40), 1)
                                                                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                        else
                                                                                          L0_0 = hstrlog
                                                                                          L0_0 = L0_0[48]
                                                                                          L0_0 = L0_0.matched
                                                                                          if L0_0 then
                                                                                            L0_0 = mp
                                                                                            L0_0 = L0_0.readfile
                                                                                            L1_1 = pe
                                                                                            L1_1 = L1_1.foffset_va
                                                                                            L1_1 = L1_1(hstrlog[48].VA + 9)
                                                                                            L0_0 = L0_0(L1_1, 1)
                                                                                            L1_1 = mp
                                                                                            L1_1 = L1_1.readfile
                                                                                            L1_1 = L1_1(pe.foffset_va(hstrlog[48].VA + 11), 1)
                                                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                          else
                                                                                            L0_0 = hstrlog
                                                                                            L0_0 = L0_0[49]
                                                                                            L0_0 = L0_0.matched
                                                                                            if L0_0 then
                                                                                              L0_0 = mp
                                                                                              L0_0 = L0_0.readfile
                                                                                              L1_1 = pe
                                                                                              L1_1 = L1_1.foffset_va
                                                                                              L1_1 = L1_1(hstrlog[49].VA + 35)
                                                                                              L0_0 = L0_0(L1_1, 1)
                                                                                              L1_1 = mp
                                                                                              L1_1 = L1_1.readfile
                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[49].VA + 43), 1)
                                                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                            else
                                                                                              L0_0 = hstrlog
                                                                                              L0_0 = L0_0[50]
                                                                                              L0_0 = L0_0.matched
                                                                                              if L0_0 then
                                                                                                L0_0 = mp
                                                                                                L0_0 = L0_0.readfile
                                                                                                L1_1 = pe
                                                                                                L1_1 = L1_1.foffset_va
                                                                                                L1_1 = L1_1(hstrlog[50].VA + 22)
                                                                                                L0_0 = L0_0(L1_1, 1)
                                                                                                L1_1 = mp
                                                                                                L1_1 = L1_1.readfile
                                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[50].VA + 34), 1)
                                                                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                              else
                                                                                                L0_0 = hstrlog
                                                                                                L0_0 = L0_0[51]
                                                                                                L0_0 = L0_0.matched
                                                                                                if L0_0 then
                                                                                                  L0_0 = mp
                                                                                                  L0_0 = L0_0.readfile
                                                                                                  L1_1 = pe
                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                  L1_1 = L1_1(hstrlog[51].VA + 25)
                                                                                                  L0_0 = L0_0(L1_1, 1)
                                                                                                  L1_1 = mp
                                                                                                  L1_1 = L1_1.readfile
                                                                                                  L1_1 = L1_1(pe.foffset_va(hstrlog[51].VA + 27), 1)
                                                                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                else
                                                                                                  L0_0 = hstrlog
                                                                                                  L0_0 = L0_0[52]
                                                                                                  L0_0 = L0_0.matched
                                                                                                  if L0_0 then
                                                                                                    L0_0 = mp
                                                                                                    L0_0 = L0_0.readfile
                                                                                                    L1_1 = pe
                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                    L1_1 = L1_1(hstrlog[52].VA + 35)
                                                                                                    L0_0 = L0_0(L1_1, 1)
                                                                                                    L1_1 = mp
                                                                                                    L1_1 = L1_1.readfile
                                                                                                    L1_1 = L1_1(pe.foffset_va(hstrlog[52].VA + 37), 1)
                                                                                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                  else
                                                                                                    L0_0 = hstrlog
                                                                                                    L0_0 = L0_0[53]
                                                                                                    L0_0 = L0_0.matched
                                                                                                    if L0_0 then
                                                                                                      L0_0 = mp
                                                                                                      L0_0 = L0_0.readfile
                                                                                                      L1_1 = pe
                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                      L1_1 = L1_1(hstrlog[53].VA + 6)
                                                                                                      L0_0 = L0_0(L1_1, 1)
                                                                                                      L1_1 = mp
                                                                                                      L1_1 = L1_1.readfile
                                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[53].VA + 4), 1)
                                                                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                    else
                                                                                                      L0_0 = hstrlog
                                                                                                      L0_0 = L0_0[54]
                                                                                                      L0_0 = L0_0.matched
                                                                                                      if L0_0 then
                                                                                                        L0_0 = mp
                                                                                                        L0_0 = L0_0.readfile
                                                                                                        L1_1 = pe
                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                        L1_1 = L1_1(hstrlog[54].VA + 6)
                                                                                                        L0_0 = L0_0(L1_1, 1)
                                                                                                        L1_1 = mp
                                                                                                        L1_1 = L1_1.readfile
                                                                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[54].VA + 4), 1)
                                                                                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                      else
                                                                                                        L0_0 = hstrlog
                                                                                                        L0_0 = L0_0[55]
                                                                                                        L0_0 = L0_0.matched
                                                                                                        if L0_0 then
                                                                                                          L0_0 = mp
                                                                                                          L0_0 = L0_0.readfile
                                                                                                          L1_1 = pe
                                                                                                          L1_1 = L1_1.foffset_va
                                                                                                          L1_1 = L1_1(hstrlog[55].VA + 13)
                                                                                                          L0_0 = L0_0(L1_1, 1)
                                                                                                          L1_1 = mp
                                                                                                          L1_1 = L1_1.set_mpattribute
                                                                                                          L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L0_0)))
                                                                                                        else
                                                                                                          L0_0 = hstrlog
                                                                                                          L0_0 = L0_0[56]
                                                                                                          L0_0 = L0_0.matched
                                                                                                          if L0_0 then
                                                                                                            L0_0 = mp
                                                                                                            L0_0 = L0_0.readfile
                                                                                                            L1_1 = pe
                                                                                                            L1_1 = L1_1.foffset_va
                                                                                                            L1_1 = L1_1(hstrlog[56].VA + 10)
                                                                                                            L0_0 = L0_0(L1_1, 1)
                                                                                                            L1_1 = mp
                                                                                                            L1_1 = L1_1.readfile
                                                                                                            L1_1 = L1_1(pe.foffset_va(hstrlog[56].VA + 12), 1)
                                                                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                          else
                                                                                                            L0_0 = hstrlog
                                                                                                            L0_0 = L0_0[57]
                                                                                                            L0_0 = L0_0.matched
                                                                                                            if L0_0 then
                                                                                                              L0_0 = mp
                                                                                                              L0_0 = L0_0.readfile
                                                                                                              L1_1 = pe
                                                                                                              L1_1 = L1_1.foffset_va
                                                                                                              L1_1 = L1_1(hstrlog[57].VA + 8)
                                                                                                              L0_0 = L0_0(L1_1, 1)
                                                                                                              L1_1 = mp
                                                                                                              L1_1 = L1_1.readfile
                                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[57].VA + 5), 1)
                                                                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                            else
                                                                                                              L0_0 = hstrlog
                                                                                                              L0_0 = L0_0[58]
                                                                                                              L0_0 = L0_0.matched
                                                                                                              if L0_0 then
                                                                                                                L0_0 = mp
                                                                                                                L0_0 = L0_0.readfile
                                                                                                                L1_1 = pe
                                                                                                                L1_1 = L1_1.foffset_va
                                                                                                                L1_1 = L1_1(hstrlog[58].VA + 11)
                                                                                                                L0_0 = L0_0(L1_1, 1)
                                                                                                                L1_1 = mp
                                                                                                                L1_1 = L1_1.readfile
                                                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[58].VA + 14), 1)
                                                                                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                              else
                                                                                                                L0_0 = hstrlog
                                                                                                                L0_0 = L0_0[59]
                                                                                                                L0_0 = L0_0.matched
                                                                                                                if L0_0 then
                                                                                                                  L0_0 = mp
                                                                                                                  L0_0 = L0_0.readfile
                                                                                                                  L1_1 = pe
                                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                                  L1_1 = L1_1(hstrlog[59].VA + 6)
                                                                                                                  L0_0 = L0_0(L1_1, 1)
                                                                                                                  L1_1 = mp
                                                                                                                  L1_1 = L1_1.readfile
                                                                                                                  L1_1 = L1_1(pe.foffset_va(hstrlog[59].VA + 4), 1)
                                                                                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                else
                                                                                                                  L0_0 = hstrlog
                                                                                                                  L0_0 = L0_0[60]
                                                                                                                  L0_0 = L0_0.matched
                                                                                                                  if L0_0 then
                                                                                                                    L0_0 = mp
                                                                                                                    L0_0 = L0_0.readfile
                                                                                                                    L1_1 = pe
                                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                                    L1_1 = L1_1(hstrlog[60].VA + 10)
                                                                                                                    L0_0 = L0_0(L1_1, 1)
                                                                                                                    L1_1 = mp
                                                                                                                    L1_1 = L1_1.readfile
                                                                                                                    L1_1 = L1_1(pe.foffset_va(hstrlog[60].VA + 12), 1)
                                                                                                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                  else
                                                                                                                    L0_0 = hstrlog
                                                                                                                    L0_0 = L0_0[61]
                                                                                                                    L0_0 = L0_0.matched
                                                                                                                    if L0_0 then
                                                                                                                      L0_0 = mp
                                                                                                                      L0_0 = L0_0.readfile
                                                                                                                      L1_1 = pe
                                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                                      L1_1 = L1_1(hstrlog[61].VA + 10)
                                                                                                                      L0_0 = L0_0(L1_1, 1)
                                                                                                                      L1_1 = mp
                                                                                                                      L1_1 = L1_1.readfile
                                                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[61].VA + 12), 1)
                                                                                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                    else
                                                                                                                      L0_0 = hstrlog
                                                                                                                      L0_0 = L0_0[62]
                                                                                                                      L0_0 = L0_0.matched
                                                                                                                      if L0_0 then
                                                                                                                        L0_0 = mp
                                                                                                                        L0_0 = L0_0.readfile
                                                                                                                        L1_1 = pe
                                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                                        L1_1 = L1_1(hstrlog[62].VA + 4)
                                                                                                                        L0_0 = L0_0(L1_1, 1)
                                                                                                                        L1_1 = L0_0
                                                                                                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                      else
                                                                                                                        L0_0 = hstrlog
                                                                                                                        L0_0 = L0_0[63]
                                                                                                                        L0_0 = L0_0.matched
                                                                                                                        if L0_0 then
                                                                                                                          L0_0 = mp
                                                                                                                          L0_0 = L0_0.readfile
                                                                                                                          L1_1 = pe
                                                                                                                          L1_1 = L1_1.foffset_va
                                                                                                                          L1_1 = L1_1(hstrlog[63].VA + 6)
                                                                                                                          L0_0 = L0_0(L1_1, 1)
                                                                                                                          L1_1 = mp
                                                                                                                          L1_1 = L1_1.readfile
                                                                                                                          L1_1 = L1_1(pe.foffset_va(hstrlog[63].VA + 4), 1)
                                                                                                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                        else
                                                                                                                          L0_0 = hstrlog
                                                                                                                          L0_0 = L0_0[64]
                                                                                                                          L0_0 = L0_0.matched
                                                                                                                          if L0_0 then
                                                                                                                            L0_0 = mp
                                                                                                                            L0_0 = L0_0.readfile
                                                                                                                            L1_1 = pe
                                                                                                                            L1_1 = L1_1.foffset_va
                                                                                                                            L1_1 = L1_1(hstrlog[64].VA + 13)
                                                                                                                            L0_0 = L0_0(L1_1, 1)
                                                                                                                            L1_1 = mp
                                                                                                                            L1_1 = L1_1.readfile
                                                                                                                            L1_1 = L1_1(pe.foffset_va(hstrlog[64].VA + 15), 1)
                                                                                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                          else
                                                                                                                            L0_0 = hstrlog
                                                                                                                            L0_0 = L0_0[65]
                                                                                                                            L0_0 = L0_0.matched
                                                                                                                            if L0_0 then
                                                                                                                              L0_0 = mp
                                                                                                                              L0_0 = L0_0.readfile
                                                                                                                              L1_1 = pe
                                                                                                                              L1_1 = L1_1.foffset_va
                                                                                                                              L1_1 = L1_1(hstrlog[65].VA + 33)
                                                                                                                              L0_0 = L0_0(L1_1, 1)
                                                                                                                              L1_1 = mp
                                                                                                                              L1_1 = L1_1.readfile
                                                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[65].VA + 45), 1)
                                                                                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                            else
                                                                                                                              L0_0 = hstrlog
                                                                                                                              L0_0 = L0_0[66]
                                                                                                                              L0_0 = L0_0.matched
                                                                                                                              if L0_0 then
                                                                                                                                L0_0 = mp
                                                                                                                                L0_0 = L0_0.readfile
                                                                                                                                L1_1 = pe
                                                                                                                                L1_1 = L1_1.foffset_va
                                                                                                                                L1_1 = L1_1(hstrlog[66].VA + 38)
                                                                                                                                L0_0 = L0_0(L1_1, 1)
                                                                                                                                L1_1 = mp
                                                                                                                                L1_1 = L1_1.readfile
                                                                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[66].VA + 26), 1)
                                                                                                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                              else
                                                                                                                                L0_0 = hstrlog
                                                                                                                                L0_0 = L0_0[67]
                                                                                                                                L0_0 = L0_0.matched
                                                                                                                                if L0_0 then
                                                                                                                                  L0_0 = mp
                                                                                                                                  L0_0 = L0_0.readfile
                                                                                                                                  L1_1 = pe
                                                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                                                  L1_1 = L1_1(hstrlog[67].VA + 10)
                                                                                                                                  L0_0 = L0_0(L1_1, 1)
                                                                                                                                  L1_1 = mp
                                                                                                                                  L1_1 = L1_1.readfile
                                                                                                                                  L1_1 = L1_1(pe.foffset_va(hstrlog[67].VA + 12), 1)
                                                                                                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                else
                                                                                                                                  L0_0 = hstrlog
                                                                                                                                  L0_0 = L0_0[68]
                                                                                                                                  L0_0 = L0_0.matched
                                                                                                                                  if L0_0 then
                                                                                                                                    L0_0 = mp
                                                                                                                                    L0_0 = L0_0.readfile
                                                                                                                                    L1_1 = pe
                                                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                                                    L1_1 = L1_1(hstrlog[68].VA + 18)
                                                                                                                                    L0_0 = L0_0(L1_1, 1)
                                                                                                                                    L1_1 = mp
                                                                                                                                    L1_1 = L1_1.readfile
                                                                                                                                    L1_1 = L1_1(pe.foffset_va(hstrlog[68].VA + 16), 1)
                                                                                                                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                  else
                                                                                                                                    L0_0 = hstrlog
                                                                                                                                    L0_0 = L0_0[69]
                                                                                                                                    L0_0 = L0_0.matched
                                                                                                                                    if L0_0 then
                                                                                                                                      L0_0 = mp
                                                                                                                                      L0_0 = L0_0.readfile
                                                                                                                                      L1_1 = pe
                                                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                                                      L1_1 = L1_1(hstrlog[69].VA + 11)
                                                                                                                                      L0_0 = L0_0(L1_1, 1)
                                                                                                                                      L1_1 = mp
                                                                                                                                      L1_1 = L1_1.readfile
                                                                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[69].VA + 16), 1)
                                                                                                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                                      mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                    else
                                                                                                                                      L0_0 = hstrlog
                                                                                                                                      L0_0 = L0_0[70]
                                                                                                                                      L0_0 = L0_0.matched
                                                                                                                                      if L0_0 then
                                                                                                                                        L0_0 = mp
                                                                                                                                        L0_0 = L0_0.readfile
                                                                                                                                        L1_1 = pe
                                                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                                                        L1_1 = L1_1(hstrlog[70].VA + 9)
                                                                                                                                        L0_0 = L0_0(L1_1, 1)
                                                                                                                                        L1_1 = mp
                                                                                                                                        L1_1 = L1_1.readfile
                                                                                                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[70].VA + 7), 1)
                                                                                                                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                      else
                                                                                                                                        L0_0 = hstrlog
                                                                                                                                        L0_0 = L0_0[71]
                                                                                                                                        L0_0 = L0_0.matched
                                                                                                                                        if L0_0 then
                                                                                                                                          L0_0 = mp
                                                                                                                                          L0_0 = L0_0.readfile
                                                                                                                                          L1_1 = pe
                                                                                                                                          L1_1 = L1_1.foffset_va
                                                                                                                                          L1_1 = L1_1(hstrlog[71].VA + 11)
                                                                                                                                          L0_0 = L0_0(L1_1, 1)
                                                                                                                                          L1_1 = mp
                                                                                                                                          L1_1 = L1_1.readfile
                                                                                                                                          L1_1 = L1_1(pe.foffset_va(hstrlog[71].VA + 16), 1)
                                                                                                                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                                          mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                        else
                                                                                                                                          L0_0 = hstrlog
                                                                                                                                          L0_0 = L0_0[72]
                                                                                                                                          L0_0 = L0_0.matched
                                                                                                                                          if L0_0 then
                                                                                                                                            L0_0 = mp
                                                                                                                                            L0_0 = L0_0.readfile
                                                                                                                                            L1_1 = pe
                                                                                                                                            L1_1 = L1_1.foffset_va
                                                                                                                                            L1_1 = L1_1(hstrlog[72].VA + 6)
                                                                                                                                            L0_0 = L0_0(L1_1, 1)
                                                                                                                                            L1_1 = mp
                                                                                                                                            L1_1 = L1_1.readfile
                                                                                                                                            L1_1 = L1_1(pe.foffset_va(hstrlog[72].VA + 11), 1)
                                                                                                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                                            mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                          else
                                                                                                                                            L0_0 = hstrlog
                                                                                                                                            L0_0 = L0_0[73]
                                                                                                                                            L0_0 = L0_0.matched
                                                                                                                                            if L0_0 then
                                                                                                                                              L0_0 = mp
                                                                                                                                              L0_0 = L0_0.readfile
                                                                                                                                              L1_1 = pe
                                                                                                                                              L1_1 = L1_1.foffset_va
                                                                                                                                              L1_1 = L1_1(hstrlog[73].VA + 9)
                                                                                                                                              L0_0 = L0_0(L1_1, 1)
                                                                                                                                              L1_1 = mp
                                                                                                                                              L1_1 = L1_1.readfile
                                                                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[73].VA + 7), 1)
                                                                                                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                            else
                                                                                                                                              L0_0 = hstrlog
                                                                                                                                              L0_0 = L0_0[74]
                                                                                                                                              L0_0 = L0_0.matched
                                                                                                                                              if L0_0 then
                                                                                                                                                L0_0 = mp
                                                                                                                                                L0_0 = L0_0.readfile
                                                                                                                                                L1_1 = pe
                                                                                                                                                L1_1 = L1_1.foffset_va
                                                                                                                                                L1_1 = L1_1(hstrlog[74].VA + 11)
                                                                                                                                                L0_0 = L0_0(L1_1, 1)
                                                                                                                                                L1_1 = mp
                                                                                                                                                L1_1 = L1_1.readfile
                                                                                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[74].VA + 14), 1)
                                                                                                                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                              else
                                                                                                                                                L0_0 = hstrlog
                                                                                                                                                L0_0 = L0_0[75]
                                                                                                                                                L0_0 = L0_0.matched
                                                                                                                                                if L0_0 then
                                                                                                                                                  L0_0 = mp
                                                                                                                                                  L0_0 = L0_0.readfile
                                                                                                                                                  L1_1 = pe
                                                                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                                                                  L1_1 = L1_1(hstrlog[75].VA + 8)
                                                                                                                                                  L0_0 = L0_0(L1_1, 1)
                                                                                                                                                  L1_1 = mp
                                                                                                                                                  L1_1 = L1_1.readfile
                                                                                                                                                  L1_1 = L1_1(pe.foffset_va(hstrlog[75].VA + 5), 1)
                                                                                                                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                else
                                                                                                                                                  L0_0 = hstrlog
                                                                                                                                                  L0_0 = L0_0[76]
                                                                                                                                                  L0_0 = L0_0.matched
                                                                                                                                                  if L0_0 then
                                                                                                                                                    L0_0 = mp
                                                                                                                                                    L0_0 = L0_0.readfile
                                                                                                                                                    L1_1 = pe
                                                                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                                                                    L1_1 = L1_1(hstrlog[76].VA + 4)
                                                                                                                                                    L0_0 = L0_0(L1_1, 1)
                                                                                                                                                    L1_1 = mp
                                                                                                                                                    L1_1 = L1_1.readfile
                                                                                                                                                    L1_1 = L1_1(pe.foffset_va(hstrlog[76].VA + 6), 1)
                                                                                                                                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                                                  else
                                                                                                                                                    L0_0 = hstrlog
                                                                                                                                                    L0_0 = L0_0[77]
                                                                                                                                                    L0_0 = L0_0.matched
                                                                                                                                                    if L0_0 then
                                                                                                                                                      L0_0 = mp
                                                                                                                                                      L0_0 = L0_0.readfile
                                                                                                                                                      L1_1 = pe
                                                                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                                                                      L1_1 = L1_1(hstrlog[77].VA + 8)
                                                                                                                                                      L0_0 = L0_0(L1_1, 1)
                                                                                                                                                      L1_1 = mp
                                                                                                                                                      L1_1 = L1_1.readfile
                                                                                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[77].VA + 11), 1)
                                                                                                                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                    else
                                                                                                                                                      L0_0 = hstrlog
                                                                                                                                                      L0_0 = L0_0[78]
                                                                                                                                                      L0_0 = L0_0.matched
                                                                                                                                                      if L0_0 then
                                                                                                                                                        L0_0 = mp
                                                                                                                                                        L0_0 = L0_0.readfile
                                                                                                                                                        L1_1 = pe
                                                                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                                                                        L1_1 = L1_1(hstrlog[78].VA + 18)
                                                                                                                                                        L0_0 = L0_0(L1_1, 1)
                                                                                                                                                        L1_1 = mp
                                                                                                                                                        L1_1 = L1_1.readfile
                                                                                                                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[78].VA + 21), 1)
                                                                                                                                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                      else
                                                                                                                                                        L0_0 = hstrlog
                                                                                                                                                        L0_0 = L0_0[79]
                                                                                                                                                        L0_0 = L0_0.matched
                                                                                                                                                        if L0_0 then
                                                                                                                                                          L0_0 = mp
                                                                                                                                                          L0_0 = L0_0.readfile
                                                                                                                                                          L1_1 = pe
                                                                                                                                                          L1_1 = L1_1.foffset_va
                                                                                                                                                          L1_1 = L1_1(hstrlog[79].VA + 18)
                                                                                                                                                          L0_0 = L0_0(L1_1, 1)
                                                                                                                                                          L1_1 = mp
                                                                                                                                                          L1_1 = L1_1.readfile
                                                                                                                                                          L1_1 = L1_1(pe.foffset_va(hstrlog[79].VA + 31), 1)
                                                                                                                                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                        else
                                                                                                                                                          L0_0 = hstrlog
                                                                                                                                                          L0_0 = L0_0[80]
                                                                                                                                                          L0_0 = L0_0.matched
                                                                                                                                                          if L0_0 then
                                                                                                                                                            L0_0 = mp
                                                                                                                                                            L0_0 = L0_0.readfile
                                                                                                                                                            L1_1 = pe
                                                                                                                                                            L1_1 = L1_1.foffset_va
                                                                                                                                                            L1_1 = L1_1(hstrlog[80].VA + 18)
                                                                                                                                                            L0_0 = L0_0(L1_1, 1)
                                                                                                                                                            L1_1 = mp
                                                                                                                                                            L1_1 = L1_1.readfile
                                                                                                                                                            L1_1 = L1_1(pe.foffset_va(hstrlog[80].VA + 21), 1)
                                                                                                                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                          else
                                                                                                                                                            L0_0 = hstrlog
                                                                                                                                                            L0_0 = L0_0[81]
                                                                                                                                                            L0_0 = L0_0.matched
                                                                                                                                                            if L0_0 then
                                                                                                                                                              L0_0 = mp
                                                                                                                                                              L0_0 = L0_0.readfile
                                                                                                                                                              L1_1 = pe
                                                                                                                                                              L1_1 = L1_1.foffset_va
                                                                                                                                                              L1_1 = L1_1(hstrlog[81].VA + 8)
                                                                                                                                                              L0_0 = L0_0(L1_1, 1)
                                                                                                                                                              L1_1 = mp
                                                                                                                                                              L1_1 = L1_1.readfile
                                                                                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[81].VA + 11), 1)
                                                                                                                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                            else
                                                                                                                                                              L0_0 = hstrlog
                                                                                                                                                              L0_0 = L0_0[82]
                                                                                                                                                              L0_0 = L0_0.matched
                                                                                                                                                              if L0_0 then
                                                                                                                                                                L0_0 = mp
                                                                                                                                                                L0_0 = L0_0.readfile
                                                                                                                                                                L1_1 = pe
                                                                                                                                                                L1_1 = L1_1.foffset_va
                                                                                                                                                                L1_1 = L1_1(hstrlog[82].VA + 8)
                                                                                                                                                                L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                L1_1 = mp
                                                                                                                                                                L1_1 = L1_1.readfile
                                                                                                                                                                L1_1 = L1_1(pe.foffset_va(hstrlog[82].VA + 21), 1)
                                                                                                                                                                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                              else
                                                                                                                                                                L0_0 = hstrlog
                                                                                                                                                                L0_0 = L0_0[83]
                                                                                                                                                                L0_0 = L0_0.matched
                                                                                                                                                                if L0_0 then
                                                                                                                                                                  L0_0 = mp
                                                                                                                                                                  L0_0 = L0_0.readfile
                                                                                                                                                                  L1_1 = pe
                                                                                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                                                                                  L1_1 = L1_1(hstrlog[83].VA + 18)
                                                                                                                                                                  L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                  L1_1 = mp
                                                                                                                                                                  L1_1 = L1_1.readfile
                                                                                                                                                                  L1_1 = L1_1(pe.foffset_va(hstrlog[83].VA + 31), 1)
                                                                                                                                                                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                                else
                                                                                                                                                                  L0_0 = hstrlog
                                                                                                                                                                  L0_0 = L0_0[84]
                                                                                                                                                                  L0_0 = L0_0.matched
                                                                                                                                                                  if L0_0 then
                                                                                                                                                                    L0_0 = mp
                                                                                                                                                                    L0_0 = L0_0.readfile
                                                                                                                                                                    L1_1 = pe
                                                                                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                                                                                    L1_1 = L1_1(hstrlog[84].VA + 8)
                                                                                                                                                                    L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                    L1_1 = mp
                                                                                                                                                                    L1_1 = L1_1.readfile
                                                                                                                                                                    L1_1 = L1_1(pe.foffset_va(hstrlog[84].VA + 21), 1)
                                                                                                                                                                    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                                  else
                                                                                                                                                                    L0_0 = hstrlog
                                                                                                                                                                    L0_0 = L0_0[85]
                                                                                                                                                                    L0_0 = L0_0.matched
                                                                                                                                                                    if L0_0 then
                                                                                                                                                                      L0_0 = mp
                                                                                                                                                                      L0_0 = L0_0.readfile
                                                                                                                                                                      L1_1 = pe
                                                                                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                                                                                      L1_1 = L1_1(hstrlog[85].VA + 5)
                                                                                                                                                                      L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                      L1_1 = mp
                                                                                                                                                                      L1_1 = L1_1.readfile
                                                                                                                                                                      L1_1 = L1_1(pe.foffset_va(hstrlog[85].VA + 8), 1)
                                                                                                                                                                      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), mp.bitand(-string.byte(L1_1), 255)))
                                                                                                                                                                    else
                                                                                                                                                                      L0_0 = hstrlog
                                                                                                                                                                      L0_0 = L0_0[86]
                                                                                                                                                                      L0_0 = L0_0.matched
                                                                                                                                                                      if L0_0 then
                                                                                                                                                                        L0_0 = mp
                                                                                                                                                                        L0_0 = L0_0.readfile
                                                                                                                                                                        L1_1 = pe
                                                                                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                                                                                        L1_1 = L1_1(hstrlog[86].VA + 5)
                                                                                                                                                                        L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                        L1_1 = mp
                                                                                                                                                                        L1_1 = L1_1.readfile
                                                                                                                                                                        L1_1 = L1_1(pe.foffset_va(hstrlog[86].VA + 8), 1)
                                                                                                                                                                        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                                                                      else
                                                                                                                                                                        L0_0 = hstrlog
                                                                                                                                                                        L0_0 = L0_0[87]
                                                                                                                                                                        L0_0 = L0_0.matched
                                                                                                                                                                        if L0_0 then
                                                                                                                                                                          L0_0 = mp
                                                                                                                                                                          L0_0 = L0_0.readfile
                                                                                                                                                                          L1_1 = pe
                                                                                                                                                                          L1_1 = L1_1.foffset_va
                                                                                                                                                                          L1_1 = L1_1(hstrlog[87].VA + 8)
                                                                                                                                                                          L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                          L1_1 = mp
                                                                                                                                                                          L1_1 = L1_1.readfile
                                                                                                                                                                          L1_1 = L1_1(pe.foffset_va(hstrlog[87].VA + 11), 1)
                                                                                                                                                                          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                                                                          mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                        else
                                                                                                                                                                          L0_0 = hstrlog
                                                                                                                                                                          L0_0 = L0_0[88]
                                                                                                                                                                          L0_0 = L0_0.matched
                                                                                                                                                                          if L0_0 then
                                                                                                                                                                            L0_0 = mp
                                                                                                                                                                            L0_0 = L0_0.readfile
                                                                                                                                                                            L1_1 = pe
                                                                                                                                                                            L1_1 = L1_1.foffset_va
                                                                                                                                                                            L1_1 = L1_1(hstrlog[88].VA + 6)
                                                                                                                                                                            L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                            L1_1 = mp
                                                                                                                                                                            L1_1 = L1_1.set_mpattribute
                                                                                                                                                                            L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, string.byte(L0_0)))
                                                                                                                                                                            L1_1 = mp
                                                                                                                                                                            L1_1 = L1_1.set_mpattribute
                                                                                                                                                                            L1_1("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                          else
                                                                                                                                                                            L0_0 = hstrlog
                                                                                                                                                                            L0_0 = L0_0[89]
                                                                                                                                                                            L0_0 = L0_0.matched
                                                                                                                                                                            if L0_0 then
                                                                                                                                                                              L0_0 = mp
                                                                                                                                                                              L0_0 = L0_0.readfile
                                                                                                                                                                              L1_1 = pe
                                                                                                                                                                              L1_1 = L1_1.foffset_va
                                                                                                                                                                              L1_1 = L1_1(hstrlog[89].VA + 6)
                                                                                                                                                                              L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                              L1_1 = mp
                                                                                                                                                                              L1_1 = L1_1.readfile
                                                                                                                                                                              L1_1 = L1_1(pe.foffset_va(hstrlog[89].VA + 9), 1)
                                                                                                                                                                              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
                                                                                                                                                                              mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                            else
                                                                                                                                                                              L0_0 = hstrlog
                                                                                                                                                                              L0_0 = L0_0[90]
                                                                                                                                                                              L0_0 = L0_0.matched
                                                                                                                                                                              if L0_0 then
                                                                                                                                                                                L0_0 = mp
                                                                                                                                                                                L0_0 = L0_0.readfile
                                                                                                                                                                                L1_1 = pe
                                                                                                                                                                                L1_1 = L1_1.foffset_va
                                                                                                                                                                                L1_1 = L1_1(hstrlog[90].VA + 6)
                                                                                                                                                                                L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                                L1_1 = mp
                                                                                                                                                                                L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, string.byte(L0_0)))
                                                                                                                                                                                L1_1 = mp
                                                                                                                                                                                L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                L1_1("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                              else
                                                                                                                                                                                L0_0 = hstrlog
                                                                                                                                                                                L0_0 = L0_0[91]
                                                                                                                                                                                L0_0 = L0_0.matched
                                                                                                                                                                                if L0_0 then
                                                                                                                                                                                  L0_0 = mp
                                                                                                                                                                                  L0_0 = L0_0.readfile
                                                                                                                                                                                  L1_1 = pe
                                                                                                                                                                                  L1_1 = L1_1.foffset_va
                                                                                                                                                                                  L1_1 = L1_1(hstrlog[91].VA + 8)
                                                                                                                                                                                  L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                                  L1_1 = mp
                                                                                                                                                                                  L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                  L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, string.byte(L0_0)))
                                                                                                                                                                                  L1_1 = mp
                                                                                                                                                                                  L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                  L1_1("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                                else
                                                                                                                                                                                  L0_0 = hstrlog
                                                                                                                                                                                  L0_0 = L0_0[92]
                                                                                                                                                                                  L0_0 = L0_0.matched
                                                                                                                                                                                  if L0_0 then
                                                                                                                                                                                    L0_0 = mp
                                                                                                                                                                                    L0_0 = L0_0.readfile
                                                                                                                                                                                    L1_1 = pe
                                                                                                                                                                                    L1_1 = L1_1.foffset_va
                                                                                                                                                                                    L1_1 = L1_1(hstrlog[92].VA + 8)
                                                                                                                                                                                    L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                                    L1_1 = mp
                                                                                                                                                                                    L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                    L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, string.byte(L0_0)))
                                                                                                                                                                                    L1_1 = mp
                                                                                                                                                                                    L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                    L1_1("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                                  else
                                                                                                                                                                                    L0_0 = hstrlog
                                                                                                                                                                                    L0_0 = L0_0[93]
                                                                                                                                                                                    L0_0 = L0_0.matched
                                                                                                                                                                                    if L0_0 then
                                                                                                                                                                                      L0_0 = mp
                                                                                                                                                                                      L0_0 = L0_0.readfile
                                                                                                                                                                                      L1_1 = pe
                                                                                                                                                                                      L1_1 = L1_1.foffset_va
                                                                                                                                                                                      L1_1 = L1_1(hstrlog[93].VA + 8)
                                                                                                                                                                                      L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                                      L1_1 = mp
                                                                                                                                                                                      L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                      L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(-string.byte(L0_0), 255)))
                                                                                                                                                                                      L1_1 = mp
                                                                                                                                                                                      L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                      L1_1("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                                    else
                                                                                                                                                                                      L0_0 = hstrlog
                                                                                                                                                                                      L0_0 = L0_0[94]
                                                                                                                                                                                      L0_0 = L0_0.matched
                                                                                                                                                                                      if L0_0 then
                                                                                                                                                                                        L0_0 = mp
                                                                                                                                                                                        L0_0 = L0_0.readfile
                                                                                                                                                                                        L1_1 = pe
                                                                                                                                                                                        L1_1 = L1_1.foffset_va
                                                                                                                                                                                        L1_1 = L1_1(hstrlog[94].VA + 6)
                                                                                                                                                                                        L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                                        L1_1 = mp
                                                                                                                                                                                        L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                        L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, string.byte(L0_0)))
                                                                                                                                                                                        L1_1 = mp
                                                                                                                                                                                        L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                        L1_1("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                                                                                                                                                                      else
                                                                                                                                                                                        L0_0 = hstrlog
                                                                                                                                                                                        L0_0 = L0_0[95]
                                                                                                                                                                                        L0_0 = L0_0.matched
                                                                                                                                                                                        if L0_0 then
                                                                                                                                                                                          L0_0 = mp
                                                                                                                                                                                          L0_0 = L0_0.readfile
                                                                                                                                                                                          L1_1 = pe
                                                                                                                                                                                          L1_1 = L1_1.foffset_va
                                                                                                                                                                                          L1_1 = L1_1(hstrlog[95].VA + 7)
                                                                                                                                                                                          L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                                          L1_1 = mp
                                                                                                                                                                                          L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                          L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, string.byte(L0_0)))
                                                                                                                                                                                          L1_1 = mp
                                                                                                                                                                                          L1_1 = L1_1.set_mpattribute
                                                                                                                                                                                          L1_1("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
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
                                                                                                                                                                                            L0_0 = L0_0(L1_1, 1)
                                                                                                                                                                                            L1_1 = pe
                                                                                                                                                                                            L1_1 = L1_1.mmap_va_nofastfail
                                                                                                                                                                                            L1_1 = L1_1(hstrlog[17].VA + 16, 1)
                                                                                                                                                                                            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L0_0), string.byte(L1_1)))
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
