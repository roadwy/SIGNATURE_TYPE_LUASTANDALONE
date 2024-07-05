if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if mp.getfilesize() > 30000 then
  return mp.CLEAN
end
return mp.INFECTED
