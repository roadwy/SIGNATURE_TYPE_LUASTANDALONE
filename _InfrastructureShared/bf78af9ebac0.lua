if mp.getfilesize() > 196608 and mp.getfilesize() < 393216 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
