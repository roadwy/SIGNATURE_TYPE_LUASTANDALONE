if peattributes.no_security == true and mp.get_mpattribute("NID:Trojan:Win32/PswStealer.ats01") then
  return mp.INFECTED
end
return mp.CLEAN
