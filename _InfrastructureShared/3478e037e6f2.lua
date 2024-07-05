if peattributes.isdll == true and peattributes.no_security == true and mp.getfilesize() < 850000 then
  return mp.INFECTED
end
return mp.CLEAN
