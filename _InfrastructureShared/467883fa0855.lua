if mp.getfilesize() < 8192 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
