if peattributes.isexe == false or peattributes.isdamaged or peattributes.arm_image or peattributes.hasappendeddata == false then
  return mp.CLEAN
end
if mp.get_mpattribute("HSTR:NSIS_Installer") == false and mp.get_mpattribute("HSTR:NSIS.gen!A") == false or mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 1 then
  return mp.CLEAN
end
if pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData > mp.getfilesize() then
  return mp.CLEAN
end
if mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) < 94208 or mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) > 143360 then
  return mp.CLEAN
end
return mp.INFECTED
