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
  L0_0 = L0_0.readfile
  L1_1 = pe
  L1_1 = L1_1.foffset_va
  L1_1 = L1_1(hstrlog[1].VA + 6)
  L0_0 = L0_0(L1_1, 1)
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(-string.byte(L0_0), 255), 1))
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.readfile
    L1_1 = pe
    L1_1 = L1_1.foffset_va
    L1_1 = L1_1(hstrlog[2].VA + 32)
    L0_0 = L0_0(L1_1, 1)
    L1_1 = mp
    L1_1 = L1_1.readfile
    L1_1 = L1_1(pe.foffset_va(hstrlog[2].VA), 4)
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(-string.byte(L0_0), 255), 1))
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L1_1, 1)))
  else
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.readfile
      L1_1 = pe
      L1_1 = L1_1.foffset_va
      L1_1 = L1_1(hstrlog[3].VA + 5)
      L0_0 = L0_0(L1_1, 1)
      L1_1 = mp
      L1_1 = L1_1.set_mpattribute
      L1_1(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(-string.byte(L0_0), 255), 1))
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
