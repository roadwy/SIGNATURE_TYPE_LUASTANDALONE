if peattributes.isexe == true and mp.get_mpattribute("NID:Trojan:Win32/Alien.AME!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
