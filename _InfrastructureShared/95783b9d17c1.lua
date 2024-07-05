if peattributes.no_security == true and peattributes.isdll == true and mp.getfilesize() < 74304 then
  return mp.INFECTED
end
return mp.CLEAN
