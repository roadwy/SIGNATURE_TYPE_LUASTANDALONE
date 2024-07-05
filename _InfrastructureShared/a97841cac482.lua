if peattributes.isdll and peattributes.no_security and mp.getfilesize() > 282624 and mp.getfilesize() < 286720 then
  return mp.INFECTED
end
return mp.CLEAN
