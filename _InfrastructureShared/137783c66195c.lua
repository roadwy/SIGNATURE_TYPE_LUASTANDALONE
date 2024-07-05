if hstrlog[14].matched or hstrlog[21].matched or hstrlog[22].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.A0")
elseif hstrlog[15].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_4242")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.A0")
elseif hstrlog[16].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN.4")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_4343")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.A0")
elseif hstrlog[17].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.1E")
elseif hstrlog[18].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN.4")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.1E")
elseif hstrlog[19].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN.4")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_4444")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.A0")
elseif hstrlog[20].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN.4")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_4545")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.A0")
end
return mp.INFECTED
