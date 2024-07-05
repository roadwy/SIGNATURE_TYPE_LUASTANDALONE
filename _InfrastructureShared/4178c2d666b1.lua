if pehdr.NumberOfSections == 7 and peattributes.no_security == true and mp.getfilesize() >= 348160 and mp.getfilesize() <= 393216 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_DEBUG].Size == 56 then
  return mp.INFECTED
end
return mp.CLEAN
