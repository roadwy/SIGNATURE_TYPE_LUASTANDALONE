if peattributes.isdll == true and peattributes.no_security == true and mp.getfilesize() > 1000000 and mp.getfilesize() < 4000000 then
  return mp.INFECTED
end
return mp.CLEAN
