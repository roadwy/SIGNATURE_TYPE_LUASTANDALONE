if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() < 10000 then
  return mp.INFECTED
end
return mp.CLEAN
