local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = pe
  L0_0 = L0_0.mmap_va_nofastfail
  L0_0 = L0_0(hstrlog[1].VA + 4, 4)
  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = pe
    L0_0 = L0_0.mmap_va_nofastfail
    L0_0 = L0_0(hstrlog[2].VA + 13, 4)
    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
  else
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = pe
      L0_0 = L0_0.mmap_va_nofastfail
      L0_0 = L0_0(hstrlog[3].VA + 4, 4)
      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
    else
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = pe
        L0_0 = L0_0.mmap_va_nofastfail
        L0_0 = L0_0(hstrlog[4].VA - 4, 4)
        mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
      else
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = pe
          L0_0 = L0_0.mmap_va_nofastfail
          L0_0 = L0_0(hstrlog[5].VA + 24, 4)
          mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
        else
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = pe
            L0_0 = L0_0.mmap_va_nofastfail
            L0_0 = L0_0(hstrlog[6].VA + 8, 4)
            mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
          else
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = pe
              L0_0 = L0_0.mmap_va_nofastfail
              L0_0 = L0_0(hstrlog[7].VA + 6, 4)
              mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
            else
              L0_0 = hstrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.matched
              if L0_0 then
                L0_0 = pe
                L0_0 = L0_0.mmap_va_nofastfail
                L0_0 = L0_0(hstrlog[8].VA - 4, 4)
                mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
              else
                L0_0 = hstrlog
                L0_0 = L0_0[9]
                L0_0 = L0_0.matched
                if L0_0 then
                  L0_0 = mp
                  L0_0 = L0_0.readfile
                  L0_0 = L0_0(pe.foffset_va(hstrlog[9].VA + 25), 4)
                  mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
                else
                  L0_0 = hstrlog
                  L0_0 = L0_0[10]
                  L0_0 = L0_0.matched
                  if L0_0 then
                    L0_0 = mp
                    L0_0 = L0_0.readfile
                    L0_0 = L0_0(pe.foffset_va(hstrlog[10].VA + 4), 4)
                    mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
                  else
                    L0_0 = hstrlog
                    L0_0 = L0_0[11]
                    L0_0 = L0_0.matched
                    if L0_0 then
                      L0_0 = mp
                      L0_0 = L0_0.readfile
                      L0_0 = L0_0(pe.foffset_va(hstrlog[11].VA + 4), 4)
                      mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.8_k1_%08X_%02X", mp.readu_u32(L0_0, 1), 2))
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
