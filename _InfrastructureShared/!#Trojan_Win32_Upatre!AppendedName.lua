if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.hasappendeddata then
  return mp.CLEAN
end
if mp.getfilesize() > 65536 then
  return mp.CLEAN
end
if mp.getfilesize() < 4096 then
  return mp.CLEAN
end
if 4096 < mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) then
  return mp.CLEAN
end
if footerpage[4087] ~= 46 then
  return mp.CLEAN
end
if (footerpage[4089] ~= 115 or footerpage[4091] ~= 99 or footerpage[4093] ~= 114) and (footerpage[4089] ~= 83 or footerpage[4091] ~= 67 or footerpage[4093] ~= 82) and (footerpage[4089] ~= 101 or footerpage[4091] ~= 120 or footerpage[4093] ~= 101) and (footerpage[4089] ~= 69 or footerpage[4091] ~= 88 or footerpage[4093] ~= 69) then
  return mp.CLEAN
end
if footerpage[4097 - (mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData)) + 2] ~= 58 or footerpage[4097 - (mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData)) + 4] ~= 92 then
  return mp.CLEAN
end
mp.set_mpattribute("LUA:UpatreAppendedName")
return mp.CLEAN
