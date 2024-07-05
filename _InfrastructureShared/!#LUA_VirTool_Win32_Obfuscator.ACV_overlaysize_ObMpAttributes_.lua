if mp.getfilesize() > 208000 then
  return mp.CLEAN
end
if mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) == 54133 or mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) == 53941 or mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) == 55632 or mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) == 55640 then
  pe.set_peattribute("deep_analysis", true)
  pe.set_peattribute("disable_apicall_limit", true)
  pe.reemulate()
  return mp.INFECTED
end
return mp.CLEAN
