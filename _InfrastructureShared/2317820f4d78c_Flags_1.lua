if pehdr.NumberOfSections <= 6 or pehdr.NumberOfSections >= 9 then
  return mp.CLEAN
end
if pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData > mp.getfilesize() or peattributes.no_imports == true then
  mp.changedetectionname(805306401)
end
if mp.getfilesize() >= 10000 and mp.getfilesize() < 280000 and (pesecs[2].VirtualAddress == 24576 or pesecs[2].VirtualAddress == 20480 or pesecs[2].VirtualAddress == 16384) then
  return mp.SUSPICIOUS
end
return mp.CLEAN
