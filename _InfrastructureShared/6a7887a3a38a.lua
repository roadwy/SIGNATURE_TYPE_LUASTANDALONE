if mp.getfilesize() < 2576 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
