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
  L1_1 = L1_1 + 4
  L2_2 = 4
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = pe
  L1_1 = L1_1.mmap_va_nofastfail
  L2_2 = hstrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.VA
  L2_2 = L2_2 + 9
  L1_1 = L1_1(L2_2, 4)
  L2_2 = pe
  L2_2 = L2_2.mmap_va_nofastfail
  L2_2 = L2_2(hstrlog[1].VA + 14, 4)
  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L0_0, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L2_2, 1)))
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
    L2_2 = 4
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = pe
    L1_1 = L1_1.mmap_va_nofastfail
    L2_2 = hstrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.VA
    L2_2 = L2_2 + 9
    L1_1 = L1_1(L2_2, 4)
    L2_2 = pe
    L2_2 = L2_2.mmap_va_nofastfail
    L2_2 = L2_2(hstrlog[2].VA + 14, 4)
    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L0_0, 1), mp.readu_u32(L1_1, 1), mp.bitand(-mp.readu_u32(L2_2, 1), 4294967295)))
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
      L2_2 = 4
      L0_0 = L0_0(L1_1, L2_2)
      L1_1 = pe
      L1_1 = L1_1.mmap_va_nofastfail
      L2_2 = hstrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.VA
      L2_2 = L2_2 + 9
      L1_1 = L1_1(L2_2, 4)
      L2_2 = pe
      L2_2 = L2_2.mmap_va_nofastfail
      L2_2 = L2_2(hstrlog[3].VA + 14, 4)
      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.bitand(-mp.readu_u32(L0_0, 1), 4294967295), mp.readu_u32(L1_1, 1), mp.readu_u32(L2_2, 1)))
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
        L2_2 = L2_2 + 7
        L1_1 = L1_1(L2_2)
        L2_2 = 4
        L0_0 = L0_0(L1_1, L2_2)
        L1_1 = mp
        L1_1 = L1_1.readfile
        L2_2 = pe
        L2_2 = L2_2.foffset_va
        L2_2 = L2_2(hstrlog[4].VA - 4)
        L1_1 = L1_1(L2_2, 4)
        L2_2 = mp
        L2_2 = L2_2.readfile
        L2_2 = L2_2(pe.foffset_va(hstrlog[4].VA + 14), 4)
        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L0_0, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L2_2, 1)))
      else
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = mp
          L0_0 = L0_0.readfile
          L1_1 = pe
          L1_1 = L1_1.foffset_va
          L2_2 = hstrlog
          L2_2 = L2_2[5]
          L2_2 = L2_2.VA
          L2_2 = L2_2 + 7
          L1_1 = L1_1(L2_2)
          L2_2 = 4
          L0_0 = L0_0(L1_1, L2_2)
          L1_1 = mp
          L1_1 = L1_1.readfile
          L2_2 = pe
          L2_2 = L2_2.foffset_va
          L2_2 = L2_2(hstrlog[5].VA - 4)
          L1_1 = L1_1(L2_2, 4)
          L2_2 = mp
          L2_2 = L2_2.readfile
          L2_2 = L2_2(pe.foffset_va(hstrlog[5].VA + 14), 4)
          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L0_0, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L2_2, 1)))
        else
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = mp
            L0_0 = L0_0.readfile
            L1_1 = pe
            L1_1 = L1_1.foffset_va
            L2_2 = hstrlog
            L2_2 = L2_2[6]
            L2_2 = L2_2.VA
            L2_2 = L2_2 - 16
            L1_1 = L1_1(L2_2)
            L2_2 = 4
            L0_0 = L0_0(L1_1, L2_2)
            L1_1 = mp
            L1_1 = L1_1.readfile
            L2_2 = pe
            L2_2 = L2_2.foffset_va
            L2_2 = L2_2(hstrlog[6].VA - 11)
            L1_1 = L1_1(L2_2, 4)
            L2_2 = mp
            L2_2 = L2_2.readfile
            L2_2 = L2_2(pe.foffset_va(hstrlog[6].VA - 4), 4)
            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L2_2, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L0_0, 1)))
          else
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = mp
              L0_0 = L0_0.readfile
              L1_1 = pe
              L1_1 = L1_1.foffset_va
              L2_2 = hstrlog
              L2_2 = L2_2[7]
              L2_2 = L2_2.VA
              L2_2 = L2_2 - 18
              L1_1 = L1_1(L2_2)
              L2_2 = 4
              L0_0 = L0_0(L1_1, L2_2)
              L1_1 = mp
              L1_1 = L1_1.readfile
              L2_2 = pe
              L2_2 = L2_2.foffset_va
              L2_2 = L2_2(hstrlog[7].VA - 11)
              L1_1 = L1_1(L2_2, 4)
              L2_2 = mp
              L2_2 = L2_2.readfile
              L2_2 = L2_2(pe.foffset_va(hstrlog[7].VA - 4), 4)
              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L2_2, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L0_0, 1)))
            else
              L0_0 = hstrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.matched
              if L0_0 then
                L0_0 = mp
                L0_0 = L0_0.readfile
                L1_1 = pe
                L1_1 = L1_1.foffset_va
                L2_2 = hstrlog
                L2_2 = L2_2[8]
                L2_2 = L2_2.VA
                L2_2 = L2_2 - 18
                L1_1 = L1_1(L2_2)
                L2_2 = 4
                L0_0 = L0_0(L1_1, L2_2)
                L1_1 = mp
                L1_1 = L1_1.readfile
                L2_2 = pe
                L2_2 = L2_2.foffset_va
                L2_2 = L2_2(hstrlog[8].VA - 11)
                L1_1 = L1_1(L2_2, 4)
                L2_2 = mp
                L2_2 = L2_2.readfile
                L2_2 = L2_2(pe.foffset_va(hstrlog[8].VA - 4), 4)
                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L2_2, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L0_0, 1)))
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
                  L2_2 = L2_2 - 14
                  L1_1 = L1_1(L2_2)
                  L2_2 = 4
                  L0_0 = L0_0(L1_1, L2_2)
                  L1_1 = mp
                  L1_1 = L1_1.readfile
                  L2_2 = pe
                  L2_2 = L2_2.foffset_va
                  L2_2 = L2_2(hstrlog[9].VA - 9)
                  L1_1 = L1_1(L2_2, 4)
                  L2_2 = mp
                  L2_2 = L2_2.readfile
                  L2_2 = L2_2(pe.foffset_va(hstrlog[9].VA - 4), 4)
                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L2_2, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L0_0, 1)))
                else
                  L0_0 = hstrlog
                  L0_0 = L0_0[10]
                  L0_0 = L0_0.matched
                  if L0_0 then
                    L0_0 = mp
                    L0_0 = L0_0.readfile
                    L1_1 = pe
                    L1_1 = L1_1.foffset_va
                    L2_2 = hstrlog
                    L2_2 = L2_2[10]
                    L2_2 = L2_2.VA
                    L2_2 = L2_2 - 18
                    L1_1 = L1_1(L2_2)
                    L2_2 = 4
                    L0_0 = L0_0(L1_1, L2_2)
                    L1_1 = mp
                    L1_1 = L1_1.readfile
                    L2_2 = pe
                    L2_2 = L2_2.foffset_va
                    L2_2 = L2_2(hstrlog[10].VA - 11)
                    L1_1 = L1_1(L2_2, 4)
                    L2_2 = mp
                    L2_2 = L2_2.readfile
                    L2_2 = L2_2(pe.foffset_va(hstrlog[10].VA - 4), 4)
                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.9_%08X_%08X_%08X", mp.readu_u32(L2_2, 1), mp.readu_u32(L1_1, 1), mp.readu_u32(L0_0, 1)))
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
