if hstrlog[1].matched or hstrlog[10].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_04")
elseif hstrlog[2].matched or hstrlog[9].matched or hstrlog[3].matched or hstrlog[4].matched or hstrlog[5].matched or hstrlog[12].matched or hstrlog[11].matched or hstrlog[6].matched or hstrlog[8].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_05")
elseif hstrlog[7].matched or hstrlog[15].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_02")
elseif hstrlog[24].matched then
  if hstrlog[19].matched then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0C")
  elseif hstrlog[20].matched then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0D")
  else
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0A")
  end
elseif hstrlog[25].matched then
  if hstrlog[21].matched then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0D")
  elseif hstrlog[22].matched then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0F")
  end
elseif hstrlog[26].matched then
  if hstrlog[23].matched then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_14")
  end
elseif hstrlog[17].matched or hstrlog[18].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0A")
elseif hstrlog[13].matched or hstrlog[14].matched or hstrlog[16].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_06")
end
return mp.CLEAN
