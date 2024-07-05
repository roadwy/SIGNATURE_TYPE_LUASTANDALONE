if peattributes.isdll and peattributes.no_security and mp.getfilesize() > 196608 and mp.getfilesize() < 262144 then
  return mp.INFECTED
end
return mp.CLEAN
