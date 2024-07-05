if mp.getfilesize() > 100000 and mp.getfilesize() < 500000 and not mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.INFECTED
end
return mp.CLEAN
