if mp.getfilesize() > 1597900 and mp.getfilesize() < 1598100 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
