if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.epscn_islast == true then
  return mp.CLEAN
end
if peattributes.epinfirstsect == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if pesecs[1].NameDW ~= 2019914798 then
  return mp.CLEAN
end
if mp.bitand(pesecs[pehdr.NumberOfSections].Name[0], 255) == 46 then
  return mp.CLEAN
end
if pesecs[1].PointerToRawData ~= 1024 then
  return mp.CLEAN
end
return mp.INFECTED
