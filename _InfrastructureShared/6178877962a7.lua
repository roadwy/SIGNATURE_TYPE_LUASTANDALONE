if peattributes.isexe and peattributes.no_security and peattributes.isvbnative and peattributes.x86_image and mp.getfilesize() > 35840 and mp.getfilesize() < 204800 then
  return mp.INFECTED
end
return mp.CLEAN
