local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = hstrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readfile
  L1_1 = pe
  L1_1 = L1_1.foffset_va
  L1_1 = L1_1(hstrlog[3].VA + 4)
  L0_0 = L0_0(L1_1, 4)
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
else
  L0_0 = hstrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.readfile
    L1_1 = pe
    L1_1 = L1_1.foffset_va
    L1_1 = L1_1(hstrlog[4].VA + 6)
    L0_0 = L0_0(L1_1, 4)
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
  else
    L0_0 = hstrlog
    L0_0 = L0_0[5]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.readfile
      L1_1 = pe
      L1_1 = L1_1.foffset_va
      L1_1 = L1_1(hstrlog[5].VA - 4)
      L0_0 = L0_0(L1_1, 4)
      L1_1 = mp
      L1_1 = L1_1.set_mpattribute
      L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
    else
      L0_0 = hstrlog
      L0_0 = L0_0[6]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.readfile
        L1_1 = pe
        L1_1 = L1_1.foffset_va
        L1_1 = L1_1(hstrlog[6].VA - 15)
        L0_0 = L0_0(L1_1, 4)
        L1_1 = mp
        L1_1 = L1_1.set_mpattribute
        L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
      else
        L0_0 = hstrlog
        L0_0 = L0_0[1]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = mp
          L0_0 = L0_0.readfile
          L1_1 = pe
          L1_1 = L1_1.foffset_va
          L1_1 = L1_1(hstrlog[1].VA - 4)
          L0_0 = L0_0(L1_1, 4)
          L1_1 = mp
          L1_1 = L1_1.readfile
          L1_1 = L1_1(pe.foffset_va(hstrlog[1].VA + 4), 1)
          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1)))
        else
          L0_0 = hstrlog
          L0_0 = L0_0[2]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = mp
            L0_0 = L0_0.readfile
            L1_1 = pe
            L1_1 = L1_1.foffset_va
            L1_1 = L1_1(hstrlog[2].VA - 4)
            L0_0 = L0_0(L1_1, 4)
            L1_1 = mp
            L1_1 = L1_1.readfile
            L1_1 = L1_1(pe.foffset_va(hstrlog[2].VA + 4), 1)
            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", mp.readu_u32(L0_0, 1), string.byte(L1_1, 1)))
          end
        end
      end
    end
  end
end
L0_0 = hstrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = pe
  L0_0 = L0_0.mmap_va_nofastfail
  L1_1 = hstrlog
  L1_1 = L1_1[7]
  L1_1 = L1_1.VA
  L1_1 = L1_1 + 5
  L0_0 = L0_0(L1_1, 4)
  if L0_0 == "" then
    L1_1 = mp
    L1_1 = L1_1.readfile
    L1_1 = L1_1(pe.foffset_va(hstrlog[7].VA + 5), 4)
    L0_0 = L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
else
  L0_0 = hstrlog
  L0_0 = L0_0[8]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.readfile
    L1_1 = pe
    L1_1 = L1_1.foffset_va
    L1_1 = L1_1(hstrlog[8].VA + 7)
    L0_0 = L0_0(L1_1, 4)
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
  else
    L0_0 = hstrlog
    L0_0 = L0_0[9]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.readfile
      L1_1 = pe
      L1_1 = L1_1.foffset_va
      L1_1 = L1_1(hstrlog[9].VA + 5)
      L0_0 = L0_0(L1_1, 4)
      L1_1 = mp
      L1_1 = L1_1.set_mpattribute
      L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
    else
      L0_0 = hstrlog
      L0_0 = L0_0[10]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.readfile
        L1_1 = pe
        L1_1 = L1_1.foffset_va
        L1_1 = L1_1(hstrlog[10].VA + 5)
        L0_0 = L0_0(L1_1, 4)
        L1_1 = mp
        L1_1 = L1_1.set_mpattribute
        L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
      else
        L0_0 = hstrlog
        L0_0 = L0_0[11]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = mp
          L0_0 = L0_0.readfile
          L1_1 = pe
          L1_1 = L1_1.foffset_va
          L1_1 = L1_1(hstrlog[11].VA + 9)
          L0_0 = L0_0(L1_1, 4)
          L1_1 = mp
          L1_1 = L1_1.set_mpattribute
          L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
        else
          L0_0 = hstrlog
          L0_0 = L0_0[12]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = mp
            L0_0 = L0_0.readfile
            L1_1 = pe
            L1_1 = L1_1.foffset_va
            L1_1 = L1_1(hstrlog[12].VA + 5)
            L0_0 = L0_0(L1_1, 4)
            L1_1 = mp
            L1_1 = L1_1.set_mpattribute
            L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
          else
            L0_0 = hstrlog
            L0_0 = L0_0[13]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = mp
              L0_0 = L0_0.readfile
              L1_1 = pe
              L1_1 = L1_1.foffset_va
              L1_1 = L1_1(hstrlog[13].VA + 7)
              L0_0 = L0_0(L1_1, 4)
              L1_1 = mp
              L1_1 = L1_1.set_mpattribute
              L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
            else
              L0_0 = hstrlog
              L0_0 = L0_0[14]
              L0_0 = L0_0.matched
              if L0_0 then
                L0_0 = mp
                L0_0 = L0_0.readfile
                L1_1 = pe
                L1_1 = L1_1.foffset_va
                L1_1 = L1_1(hstrlog[14].VA - 7)
                L0_0 = L0_0(L1_1, 4)
                L1_1 = mp
                L1_1 = L1_1.set_mpattribute
                L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
              else
                L0_0 = hstrlog
                L0_0 = L0_0[15]
                L0_0 = L0_0.matched
                if L0_0 then
                  L0_0 = mp
                  L0_0 = L0_0.readfile
                  L1_1 = pe
                  L1_1 = L1_1.foffset_va
                  L1_1 = L1_1(hstrlog[15].VA - 7)
                  L0_0 = L0_0(L1_1, 4)
                  L1_1 = mp
                  L1_1 = L1_1.set_mpattribute
                  L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
                else
                  L0_0 = hstrlog
                  L0_0 = L0_0[16]
                  L0_0 = L0_0.matched
                  if L0_0 then
                    L0_0 = mp
                    L0_0 = L0_0.readfile
                    L1_1 = pe
                    L1_1 = L1_1.foffset_va
                    L1_1 = L1_1(hstrlog[16].VA - 4)
                    L0_0 = L0_0(L1_1, 4)
                    L1_1 = mp
                    L1_1 = L1_1.set_mpattribute
                    L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
                  else
                    L0_0 = hstrlog
                    L0_0 = L0_0[17]
                    L0_0 = L0_0.matched
                    if L0_0 then
                      L0_0 = mp
                      L0_0 = L0_0.readfile
                      L1_1 = pe
                      L1_1 = L1_1.foffset_va
                      L1_1 = L1_1(hstrlog[17].VA - 4)
                      L0_0 = L0_0(L1_1, 4)
                      L1_1 = mp
                      L1_1 = L1_1.set_mpattribute
                      L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
                    else
                      L0_0 = hstrlog
                      L0_0 = L0_0[18]
                      L0_0 = L0_0.matched
                      if L0_0 then
                        L0_0 = mp
                        L0_0 = L0_0.readfile
                        L1_1 = pe
                        L1_1 = L1_1.foffset_va
                        L1_1 = L1_1(hstrlog[18].VA - 4)
                        L0_0 = L0_0(L1_1, 4)
                        L1_1 = mp
                        L1_1 = L1_1.set_mpattribute
                        L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
                      else
                        L0_0 = hstrlog
                        L0_0 = L0_0[19]
                        L0_0 = L0_0.matched
                        if L0_0 then
                          L0_0 = mp
                          L0_0 = L0_0.readfile
                          L1_1 = pe
                          L1_1 = L1_1.foffset_va
                          L1_1 = L1_1(hstrlog[19].VA - 7)
                          L0_0 = L0_0(L1_1, 4)
                          L1_1 = mp
                          L1_1 = L1_1.set_mpattribute
                          L1_1(string.format("HSTR:Obfuscator.PN!crc_key.7_k2_%08X", mp.readu_u32(L0_0, 1)))
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
