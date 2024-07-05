if mp.getfilesize() > 10000 and mp.getfilesize() < 50000 and not mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.INFECTED
end
return mp.CLEAN
