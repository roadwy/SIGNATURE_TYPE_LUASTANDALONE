if mp.get_mpattribute("RPF:SmartAssembly") and mp.get_mpattribute("PEPCODE:HasDigitalSignature") and pe.get_versioninfo() ~= nil and string.find(string.lower(pe.get_versioninfo().InternalName), "luckyleap", 1, true) then
  mp.set_mpattribute("Trojan:Win32/LuckyLeap")
end
return mp.CLEAN
