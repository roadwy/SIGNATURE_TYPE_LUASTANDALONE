if peattributes.isexe and mp.getfilesize() >= 65536 and mp.getfilesize() <= 1048576 and peattributes.no_security then
  return mp.INFECTED
end
return mp.CLEAN
