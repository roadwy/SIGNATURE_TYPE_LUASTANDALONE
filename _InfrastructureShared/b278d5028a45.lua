local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readfile
  L0_0 = L0_0(pe.foffset_va(hstrlog[1].VA + 11), 4)
  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L0_0, 1)))
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.readfile
    L0_0 = L0_0(pe.foffset_va(hstrlog[2].VA - 7), 4)
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", mp.readu_u32(L0_0, 1)))
  else
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if not L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[5]
      L0_0 = L0_0.matched
      if not L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[6]
        L0_0 = L0_0.matched
        if not L0_0 then
          L0_0 = hstrlog
          L0_0 = L0_0[7]
          L0_0 = L0_0.matched
          if not L0_0 then
            L0_0 = hstrlog
            L0_0 = L0_0[8]
            L0_0 = L0_0.matched
            if not L0_0 then
              L0_0 = hstrlog
              L0_0 = L0_0[9]
              L0_0 = L0_0.matched
            end
          end
        end
      end
    else
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.set_mpattribute
        L0_0(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", 4097))
    end
    else
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.set_mpattribute
        L0_0(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", 4096))
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
