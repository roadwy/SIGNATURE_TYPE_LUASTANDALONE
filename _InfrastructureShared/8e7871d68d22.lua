if mp.getfilesize() < 12288 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
