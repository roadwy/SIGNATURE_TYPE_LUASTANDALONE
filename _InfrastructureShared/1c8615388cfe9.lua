if peattributes.no_security and peattributes.isdll and mp.getfilesize() < 786432 then
  return mp.INFECTED
end
return mp.CLEAN
