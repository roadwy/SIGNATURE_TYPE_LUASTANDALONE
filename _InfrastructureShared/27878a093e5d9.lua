if peattributes.no_security and peattributes.ismsil and peattributes.isdll and mp.getfilesize() < 32768 then
  return mp.INFECTED
end
return mp.CLEAN
