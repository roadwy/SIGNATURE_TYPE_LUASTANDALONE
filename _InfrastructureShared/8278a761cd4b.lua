if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.isexe and pehdr.NumberOfSections == 5 then
  return mp.INFECTED
end
return mp.CLEAN
