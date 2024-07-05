if mp.getfilesize() > 1500000 and mp.getfilesize() < 2500000 and pehdr.Machine == 332 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == 0 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_IMPORT].Size < 144 and pehdr.NumberOfSections == 4 then
  return mp.INFECTED
end
return mp.CLEAN
