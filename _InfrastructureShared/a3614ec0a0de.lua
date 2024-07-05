if peattributes.no_security == true and mp.getfilesize() <= 720896 and mp.getfilesize() >= 65536 and peattributes.isdll == false then
  return mp.INFECTED
end
return mp.CLEAN
