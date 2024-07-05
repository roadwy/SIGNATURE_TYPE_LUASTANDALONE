if mp.getfilesize() > 1000000 and mp.getfilesize() < 2000000 and pehdr.Machine == 332 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == 0 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_IMPORT].Size < 256 and pehdr.NumberOfSections == 4 then
  return mp.INFECTED
end
return mp.CLEAN
