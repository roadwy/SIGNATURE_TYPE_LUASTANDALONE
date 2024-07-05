if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.isdll and mp.getfilesize() <= 716800 and mp.getfilesize() >= 614400 then
  return mp.INFECTED
end
return mp.CLEAN
