if mp.getfilesize() < 16384 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
