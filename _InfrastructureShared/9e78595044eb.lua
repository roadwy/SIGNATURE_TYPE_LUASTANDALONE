if not peattributes.isdll then
  return mp.CLEAN
end
if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if mp.getfilesize() > 4000000 or mp.getfilesize() < 10000 then
  return mp.CLEAN
end
return mp.INFECTED
