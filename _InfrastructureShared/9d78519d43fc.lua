if peattributes.no_security == true and peattributes.isdll == true and mp.getfilesize() > 400000 and mp.getfilesize() < 600000 then
  return mp.INFECTED
end
return mp.CLEAN
