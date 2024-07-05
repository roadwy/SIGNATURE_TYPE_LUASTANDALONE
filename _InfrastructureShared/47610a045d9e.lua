if peattributes.isvbnative == true and peattributes.no_security == true and mp.getfilesize() < 65536 then
  return mp.INFECTED
end
return mp.CLEAN
