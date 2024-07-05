if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if pesecs[pehdr.NumberOfSections].NameDW ~= 1835622702 then
  return mp.CLEAN
end
return pe.scanpage(pesecs[pehdr.NumberOfSections].PointerToRawData)
