if peattributes.isdll == false and peattributes.no_security == true and mp.getfilesize() < 1508416 then
  return mp.INFECTED
end
return mp.CLEAN
