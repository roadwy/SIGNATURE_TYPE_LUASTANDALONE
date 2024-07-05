if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT == 2 then
  mp.set_mpattribute("HSTR:Win32/Obfuscator_Upatre_Dyzap_1")
elseif hstrlog[3].matched then
  mp.set_mpattribute("HSTR:Win32/Obfuscator_Upatre_Dyzap_2")
end
return mp.CLEAN
