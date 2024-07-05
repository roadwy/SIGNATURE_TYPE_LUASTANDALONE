if peattributes.no_security == true and mp.getfilesize() >= 32768 and mp.getfilesize() <= 655360 and (pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_DEBUG].Size >= 56 or pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_DEBUG].Size >= pehdr.SizeOfImage) then
  return mp.INFECTED
end
return mp.CLEAN
