if peattributes.ismsil == true and peattributes.isdll == true and peattributes.no_security == true and mp.getfilesize() < 5000 then
  return mp.INFECTED
end
return mp.CLEAN
