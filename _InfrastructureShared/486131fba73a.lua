if peattributes.isexe and peattributes.no_security and peattributes.amd64_image and mp.getfilesize() >= 892000 and mp.getfilesize() <= 892010 then
  return mp.INFECTED
end
return mp.CLEAN
