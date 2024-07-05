if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() < 600000 then
  return mp.INFECTED
end
return mp.CLEAN
