if mp.getfilesize() <= 155000 and mp.getfilesize() >= 150000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
