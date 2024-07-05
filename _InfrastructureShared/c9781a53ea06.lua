if peattributes.no_security and peattributes.isdll and mp.getfilesize() < 14288 then
  return mp.INFECTED
end
return mp.CLEAN
