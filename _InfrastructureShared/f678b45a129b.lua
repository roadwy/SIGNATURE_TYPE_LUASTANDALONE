local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readfile
  L1_1 = pe
  L1_1 = L1_1.foffset_va
  L2_2 = hstrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.VA
  L2_2 = L2_2 + 8
  L1_1 = L1_1(L2_2)
  L2_2 = 1
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = mp
  L1_1 = L1_1.readfile
  L2_2 = pe
  L2_2 = L2_2.foffset_va
  L2_2 = L2_2(hstrlog[1].VA + 11)
  L1_1 = L1_1(L2_2, 1)
  L2_2 = mp
  L2_2 = L2_2.readfile
  L2_2 = L2_2(pe.foffset_va(hstrlog[1].VA + 14), 1)
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), string.byte(L2_2)))
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.readfile
    L1_1 = pe
    L1_1 = L1_1.foffset_va
    L2_2 = hstrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.VA
    L2_2 = L2_2 + 8
    L1_1 = L1_1(L2_2)
    L2_2 = 1
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = mp
    L1_1 = L1_1.readfile
    L2_2 = pe
    L2_2 = L2_2.foffset_va
    L2_2 = L2_2(hstrlog[2].VA + 11)
    L1_1 = L1_1(L2_2, 1)
    L2_2 = mp
    L2_2 = L2_2.readfile
    L2_2 = L2_2(pe.foffset_va(hstrlog[2].VA + 14), 1)
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), mp.bitand(-string.byte(L2_2), 255)))
  else
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.readfile
      L1_1 = pe
      L1_1 = L1_1.foffset_va
      L2_2 = hstrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.VA
      L2_2 = L2_2 + 8
      L1_1 = L1_1(L2_2)
      L2_2 = 1
      L0_0 = L0_0(L1_1, L2_2)
      L1_1 = mp
      L1_1 = L1_1.readfile
      L2_2 = pe
      L2_2 = L2_2.foffset_va
      L2_2 = L2_2(hstrlog[3].VA + 11)
      L1_1 = L1_1(L2_2, 1)
      L2_2 = mp
      L2_2 = L2_2.readfile
      L2_2 = L2_2(pe.foffset_va(hstrlog[3].VA + 14), 1)
      mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), mp.bitand(-string.byte(L2_2), 255)))
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
        L2_2 = L2_2 + 8
        L1_1 = L1_1(L2_2)
        L2_2 = 1
        L0_0 = L0_0(L1_1, L2_2)
        L1_1 = mp
        L1_1 = L1_1.readfile
        L2_2 = pe
        L2_2 = L2_2.foffset_va
        L2_2 = L2_2(hstrlog[4].VA + 11)
        L1_1 = L1_1(L2_2, 1)
        L2_2 = mp
        L2_2 = L2_2.readfile
        L2_2 = L2_2(pe.foffset_va(hstrlog[4].VA + 14), 1)
        mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", mp.bitand(-string.byte(L0_0), 255)))
        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), mp.bitand(-string.byte(L2_2), 255)))
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
          L2_2 = L2_2 + 6
          L1_1 = L1_1(L2_2)
          L2_2 = 1
          L0_0 = L0_0(L1_1, L2_2)
          L1_1 = mp
          L1_1 = L1_1.readfile
          L2_2 = pe
          L2_2 = L2_2.foffset_va
          L2_2 = L2_2(hstrlog[5].VA + 12)
          L1_1 = L1_1(L2_2, 1)
          L2_2 = mp
          L2_2 = L2_2.readfile
          L2_2 = L2_2(pe.foffset_va(hstrlog[5].VA + 18), 1)
          mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), string.byte(L2_2)))
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
            L2_2 = L2_2 + 6
            L1_1 = L1_1(L2_2)
            L2_2 = 1
            L0_0 = L0_0(L1_1, L2_2)
            L1_1 = mp
            L1_1 = L1_1.readfile
            L2_2 = pe
            L2_2 = L2_2.foffset_va
            L2_2 = L2_2(hstrlog[6].VA + 9)
            L1_1 = L1_1(L2_2, 1)
            L2_2 = mp
            L2_2 = L2_2.readfile
            L2_2 = L2_2(pe.foffset_va(hstrlog[6].VA + 12), 1)
            mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), string.byte(L2_2)))
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
              L2_2 = L2_2 + 6
              L1_1 = L1_1(L2_2)
              L2_2 = 1
              L0_0 = L0_0(L1_1, L2_2)
              L1_1 = mp
              L1_1 = L1_1.readfile
              L2_2 = pe
              L2_2 = L2_2.foffset_va
              L2_2 = L2_2(hstrlog[7].VA + 9)
              L1_1 = L1_1(L2_2, 1)
              L2_2 = mp
              L2_2 = L2_2.readfile
              L2_2 = L2_2(pe.foffset_va(hstrlog[7].VA + 12), 1)
              mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), string.byte(L2_2)))
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
                L2_2 = L2_2 + hstrlog[8].match_offsets[2]
                L1_1 = L1_1(L2_2)
                L2_2 = 1
                L0_0 = L0_0(L1_1, L2_2)
                L1_1 = mp
                L1_1 = L1_1.readfile
                L2_2 = pe
                L2_2 = L2_2.foffset_va
                L2_2 = L2_2(hstrlog[8].VA + hstrlog[8].match_offsets[3])
                L1_1 = L1_1(L2_2, 1)
                L2_2 = mp
                L2_2 = L2_2.readfile
                L2_2 = L2_2(pe.foffset_va(hstrlog[8].VA + hstrlog[8].match_offsets[4]), 1)
                mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", string.byte(L1_1), string.byte(L2_2)))
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
