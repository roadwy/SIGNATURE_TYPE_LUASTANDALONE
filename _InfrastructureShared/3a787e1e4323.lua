if not peattributes.isexe and not peattributes.isdll then
  return mp.CLEAN
end
if peattributes.hasappendeddata == false then
  return mp.CLEAN
end
if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
return mp.INFECTED
