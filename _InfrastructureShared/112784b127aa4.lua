if mp.getfilesize() < 2097152 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
