if peattributes.isdll and mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN
