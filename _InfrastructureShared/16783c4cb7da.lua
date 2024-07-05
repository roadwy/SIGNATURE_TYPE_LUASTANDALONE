if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if pe.get_exports() >= 10 then
  return mp.CLEAN
end
return mp.LOWFI
