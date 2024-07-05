if pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 8 and (mp.get_mpattribute("NID:CryptInject.AK!Pra1") or mp.get_mpattribute("NID:CryptInject.AK!Pra2")) then
  return mp.INFECTED
end
return mp.CLEAN
