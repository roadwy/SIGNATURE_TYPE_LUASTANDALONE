if peattributes.isdll == true and peattributes.no_security == true and mp.getfilesize() < 420000 then
  return mp.INFECTED
end
return mp.CLEAN
