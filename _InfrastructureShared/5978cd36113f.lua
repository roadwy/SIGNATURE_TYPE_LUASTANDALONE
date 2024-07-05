if peattributes.ismsil == true and mp.getfilesize() < 3048000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
