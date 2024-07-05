if peattributes.no_security == true and mp.get_mpattribute("NID:Win32/LockCrypt.PA!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
