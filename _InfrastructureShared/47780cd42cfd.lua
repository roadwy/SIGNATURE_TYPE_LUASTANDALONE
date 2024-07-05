if peattributes.amd64_image and peattributes.isexe and mp.getfilesize() > 1000000 then
  return mp.INFECTED
end
return mp.CLEAN
