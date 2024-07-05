if mp.getfilesize() < 98304 and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN
