if peattributes.no_security == true and mp.get_mpattribute("TEL:NID:Trojan:Win32/Lolopak.A!al1") then
  return mp.INFECTED
end
return mp.CLEAN
