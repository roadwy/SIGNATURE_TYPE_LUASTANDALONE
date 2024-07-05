if mp.getfilesize() < 28672 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
