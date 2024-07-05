if peattributes.isdll == true and peattributes.amd64_image and mp.getfilesize() < 468744 then
  return mp.INFECTED
end
return mp.CLEAN
