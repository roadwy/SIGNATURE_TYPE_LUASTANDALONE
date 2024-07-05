if peattributes.no_security == true and mp.getfilesize() >= 114688 and mp.getfilesize() <= 131072 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_DEBUG].Size == 56 then
  return mp.INFECTED
end
return mp.CLEAN
