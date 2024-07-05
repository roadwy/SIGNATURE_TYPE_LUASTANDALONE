if peattributes.no_security and peattributes.ismsil and mp.getfilesize() <= 2031616 and mp.getfilesize() >= 1835008 then
  return mp.INFECTED
end
return mp.CLEAN
