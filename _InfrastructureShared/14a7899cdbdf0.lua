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
  L2_2 = L2_2 + 10
  L1_1 = L1_1(L2_2)
  L2_2 = 4
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = mp
  L1_1 = L1_1.readfile
  L2_2 = pe
  L2_2 = L2_2.foffset_va
  L2_2 = L2_2(hstrlog[1].VA + 20)
  L1_1 = L1_1(L2_2, 4)
  L2_2 = mp
  L2_2 = L2_2.readfile
  L2_2 = L2_2(pe.foffset_va(hstrlog[1].VA), 4)
  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L2_2, 1)))
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
    L2_2 = L2_2 + 13
    L1_1 = L1_1(L2_2)
    L2_2 = 4
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = mp
    L1_1 = L1_1.readfile
    L2_2 = pe
    L2_2 = L2_2.foffset_va
    L2_2 = L2_2(hstrlog[2].VA + 23)
    L1_1 = L1_1(L2_2, 4)
    L2_2 = mp
    L2_2 = L2_2.readfile
    L2_2 = L2_2(pe.foffset_va(hstrlog[2].VA), 4)
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L2_2, 1)))
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
      L2_2 = L2_2 + 5
      L1_1 = L1_1(L2_2)
      L2_2 = 4
      L0_0 = L0_0(L1_1, L2_2)
      L1_1 = mp
      L1_1 = L1_1.readfile
      L2_2 = pe
      L2_2 = L2_2.foffset_va
      L2_2 = L2_2(hstrlog[3].VA + 15)
      L1_1 = L1_1(L2_2, 4)
      L2_2 = mp
      L2_2 = L2_2.set_mpattribute
      L2_2(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
      L2_2 = mp
      L2_2 = L2_2.set_mpattribute
      L2_2(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", 4096))
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
        L2_2 = L2_2 + 5
        L1_1 = L1_1(L2_2)
        L2_2 = 4
        L0_0 = L0_0(L1_1, L2_2)
        L1_1 = mp
        L1_1 = L1_1.readfile
        L2_2 = pe
        L2_2 = L2_2.foffset_va
        L2_2 = L2_2(hstrlog[4].VA + 15)
        L1_1 = L1_1(L2_2, 4)
        L2_2 = mp
        L2_2 = L2_2.set_mpattribute
        L2_2(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
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
          L2_2 = L2_2 + 10
          L1_1 = L1_1(L2_2)
          L2_2 = 4
          L0_0 = L0_0(L1_1, L2_2)
          L1_1 = mp
          L1_1 = L1_1.readfile
          L2_2 = pe
          L2_2 = L2_2.foffset_va
          L2_2 = L2_2(hstrlog[5].VA + 20)
          L1_1 = L1_1(L2_2, 4)
          L2_2 = mp
          L2_2 = L2_2.readfile
          L2_2 = L2_2(pe.foffset_va(hstrlog[5].VA), 4)
          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L2_2, 1)))
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
            L2_2 = L2_2 + 10
            L1_1 = L1_1(L2_2)
            L2_2 = 4
            L0_0 = L0_0(L1_1, L2_2)
            L1_1 = mp
            L1_1 = L1_1.readfile
            L2_2 = pe
            L2_2 = L2_2.foffset_va
            L2_2 = L2_2(hstrlog[6].VA + 20)
            L1_1 = L1_1(L2_2, 4)
            L2_2 = mp
            L2_2 = L2_2.readfile
            L2_2 = L2_2(pe.foffset_va(hstrlog[6].VA), 4)
            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L2_2, 1)))
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
              L2_2 = L2_2 + 13
              L1_1 = L1_1(L2_2)
              L2_2 = 4
              L0_0 = L0_0(L1_1, L2_2)
              L1_1 = mp
              L1_1 = L1_1.readfile
              L2_2 = pe
              L2_2 = L2_2.foffset_va
              L2_2 = L2_2(hstrlog[7].VA + 23)
              L1_1 = L1_1(L2_2, 4)
              L2_2 = mp
              L2_2 = L2_2.readfile
              L2_2 = L2_2(pe.foffset_va(hstrlog[7].VA), 4)
              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L2_2, 1)))
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
                L2_2 = L2_2 + 13
                L1_1 = L1_1(L2_2)
                L2_2 = 4
                L0_0 = L0_0(L1_1, L2_2)
                L1_1 = mp
                L1_1 = L1_1.readfile
                L2_2 = pe
                L2_2 = L2_2.foffset_va
                L2_2 = L2_2(hstrlog[8].VA + 23)
                L1_1 = L1_1(L2_2, 4)
                L2_2 = mp
                L2_2 = L2_2.readfile
                L2_2 = L2_2(pe.foffset_va(hstrlog[8].VA), 4)
                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L2_2, 1)))
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
                  L2_2 = L2_2 + 15
                  L1_1 = L1_1(L2_2)
                  L2_2 = 4
                  L0_0 = L0_0(L1_1, L2_2)
                  L1_1 = mp
                  L1_1 = L1_1.readfile
                  L2_2 = pe
                  L2_2 = L2_2.foffset_va
                  L2_2 = L2_2(hstrlog[9].VA + 25)
                  L1_1 = L1_1(L2_2, 4)
                  L2_2 = mp
                  L2_2 = L2_2.readfile
                  L2_2 = L2_2(pe.foffset_va(hstrlog[9].VA), 4)
                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(mp.readu_u32(L0_0, 1), 2), 255), mp.bitand(mp.shr32(mp.readu_u32(L1_1, 1), 2), 255)))
                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L2_2, 1)))
                end
              end
            end
          end
        end
      end
    end
  end
end
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
  L2_2 = L2_2 - 1
  L1_1 = L1_1(L2_2)
  L2_2 = 1
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = string
  L2_2 = L2_2.format
  L2_2 = L2_2("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0))
  L1_1(L2_2, L2_2("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
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
    L2_2 = L2_2 - 1
    L1_1 = L1_1(L2_2)
    L2_2 = 1
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L2_2 = string
    L2_2 = L2_2.format
    L2_2 = L2_2("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0))
    L1_1(L2_2, L2_2("HSTR:VirTool:Win32/Obfuscator.PN!k3.0_%02X", string.byte(L0_0)))
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
