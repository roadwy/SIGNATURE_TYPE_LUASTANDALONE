if mp.getfilesize() > 5000 and mp.getfilesize() < 100000 and not mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.INFECTED
end
return mp.CLEAN
