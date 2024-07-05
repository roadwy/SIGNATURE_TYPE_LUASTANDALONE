if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.isexe == true and pehdr.NumberOfSections == 9 and pesecs[4].Name == "seg1" then
  return mp.INFECTED
end
return mp.CLEAN
