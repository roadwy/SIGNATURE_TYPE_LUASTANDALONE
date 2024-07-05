if mp.getfilesize() < 268435456 then
  return mp.CLEAN
end
if mp.getfilesize() <= pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData then
  return mp.CLEAN
end
if pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData > pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA then
  return mp.CLEAN
end
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == 0 then
elseif pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData then
elseif pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData < pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA then
else
  return mp.CLEAN
end
if (pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData)) * 100 / mp.getfilesize() > 90 then
  return mp.INFECTED
end
return mp.CLEAN
