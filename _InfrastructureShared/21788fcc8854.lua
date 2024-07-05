local L0_0
function L0_0(A0_1)
  mp.readprotection(false)
  return mp.readu_u32(mp.readfile(pe.foffset_va(A0_1), 4), 1)
end
getrawu32 = L0_0
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L0_0("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0A")
  L0_0 = nil
  L0_0 = getrawu32(hstrlog[1].VA + 1328)
  if L0_0 == 2537292765 then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_6DF1")
  end
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = nil
    L0_0 = getrawu32(hstrlog[2].VA + 667)
    if L0_0 == 87682159 then
      mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0D")
      mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_6FF3")
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
