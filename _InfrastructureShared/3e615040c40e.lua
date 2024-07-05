if mp.getfilesize() < 5000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
