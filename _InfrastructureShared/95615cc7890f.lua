if mp.getfilesize() >= 278016 and mp.getfilesize() <= 1125414 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
