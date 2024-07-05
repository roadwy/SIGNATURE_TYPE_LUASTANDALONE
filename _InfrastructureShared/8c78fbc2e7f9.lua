if mp.get_mpattribute("NID:Win32/CryptInject.PN!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
