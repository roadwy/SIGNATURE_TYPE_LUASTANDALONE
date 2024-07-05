if mp.getfilesize() <= 1000000 and mp.getfilesize() >= 500000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
