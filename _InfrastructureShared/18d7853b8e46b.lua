if peattributes.isvbnative and peattributes.no_security and mp.getfilesize() > 806912 and mp.getfilesize() < 1007616 then
  return mp.INFECTED
end
return mp.CLEAN
