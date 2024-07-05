if peattributes.isdll == true and peattributes.no_security == true and mp.getfilesize() < 432642 then
  return mp.INFECTED
end
return mp.CLEAN
