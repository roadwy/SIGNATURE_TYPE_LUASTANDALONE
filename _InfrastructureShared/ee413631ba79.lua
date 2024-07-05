if mp.get_mpattribute("PEPCODE:HasDigitalSignature") and peattributes.isexe then
  return mp.INFECTED
end
return mp.CLEAN
