if pesecs[pehdr.NumberOfSections].SizeOfRawData > 2 then
  return mp.CLEAN
end
if mp.getfilesize() >= 400000 then
  mp.set_mpattribute("AutoItIgnoreMaxSizes")
end
return mp.INFECTED
