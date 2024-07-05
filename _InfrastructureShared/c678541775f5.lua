if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.isexe and mp.getfilesize() <= 2918400 and mp.getfilesize() >= 1894400 then
  return mp.INFECTED
end
return mp.CLEAN
