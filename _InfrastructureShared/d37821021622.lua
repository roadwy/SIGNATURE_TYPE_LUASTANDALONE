if mp.getfilesize() >= 1100000 and mp.getfilesize() <= 1400000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
