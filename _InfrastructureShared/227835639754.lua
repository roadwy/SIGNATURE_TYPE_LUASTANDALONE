if mp.getfilesize() > 307200 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
