if mp.getfilesize() < 16896 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
