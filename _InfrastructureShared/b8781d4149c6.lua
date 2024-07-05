if peattributes.isdll and peattributes.no_security and mp.getfilesize() > 688128 and mp.getfilesize() < 696320 then
  return mp.INFECTED
end
return mp.CLEAN
