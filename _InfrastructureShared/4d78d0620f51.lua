if mp.getfilesize() < 5376 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
