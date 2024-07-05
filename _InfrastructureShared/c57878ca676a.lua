if peattributes.isdll and peattributes.no_security and mp.getfilesize() > 1572864 and mp.getfilesize() < 1638400 then
  return mp.INFECTED
end
return mp.CLEAN
