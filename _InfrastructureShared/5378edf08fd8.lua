if mp.getfilesize() < 500000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
