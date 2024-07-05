if mp.get_mpattribute("PEPCODE:HasDigitalSignature") or peattributes.isexe == false then
  return mp.CLEAN
end
return mp.INFECTED
