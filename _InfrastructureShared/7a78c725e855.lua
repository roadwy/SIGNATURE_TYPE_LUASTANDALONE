if peattributes.isdll == true and peattributes.no_security == true and mp.getfilesize() < 1500000 then
  return mp.INFECTED
end
return mp.CLEAN
