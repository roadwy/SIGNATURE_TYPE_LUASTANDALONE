if mp.get_mpattribute("PEPCODE:HasDigitalSignatur") or peattributes.isexe == false then
  return mp.CLEAN
end
return mp.INFECTED
