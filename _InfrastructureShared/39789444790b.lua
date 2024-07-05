if hstrlog[1].matched or hstrlog[2].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_8308")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.20")
elseif hstrlog[3].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_860B")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.20")
elseif hstrlog[4].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_870C")
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k7.20")
end
return mp.INFECTED
