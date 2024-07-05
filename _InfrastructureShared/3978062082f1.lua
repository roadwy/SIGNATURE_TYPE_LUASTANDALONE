if hstrlog[1].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_7C01")
  mp.set_mpattribute("HSTR:Obfuscator.PN!crc_key.1_075108AA_003272F1")
elseif hstrlog[2].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_7D02")
  mp.set_mpattribute("HSTR:Obfuscator.PN!crc_key.1_075108AC_003272F3")
elseif hstrlog[3].matched then
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_78FC")
  mp.set_mpattribute("HSTR:Obfuscator.PN!crc_key.1_075108A3_003272EA")
end
return mp.INFECTED
