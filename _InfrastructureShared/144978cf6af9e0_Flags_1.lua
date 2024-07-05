if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 16 then
  return mp.INFECTED
end
return mp.SUSPICIOUS
