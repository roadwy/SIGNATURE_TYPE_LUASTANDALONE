if mp.getfilesize() >= 614400 and mp.getfilesize() <= 720896 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_DEBUG].Size == 56 and pehdr.Subsystem == 2 and pehdr.NumberOfSections >= 7 and pehdr.NumberOfSections <= 10 then
  return mp.INFECTED
end
return mp.CLEAN
