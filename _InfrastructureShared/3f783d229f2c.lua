if peattributes.no_security == true and mp.get_mpattribute("NID:Win32/Remcos.PI!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
