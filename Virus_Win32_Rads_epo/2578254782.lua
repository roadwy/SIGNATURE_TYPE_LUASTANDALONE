if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if pesecs[pehdr.NumberOfSections].VirtualSize ~= 8192 then
  return mp.CLEAN
end
if pesecs[pehdr.NumberOfSections].NameDW ~= 1634222894 then
  return mp.CLEAN
end
return pe.scanpage(pesecs[pehdr.NumberOfSections].PointerToRawData)
