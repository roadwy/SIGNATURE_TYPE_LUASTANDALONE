if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if mp.getfilesize() > 10240000 then
  return mp.CLEAN
end
return mp.INFECTED
