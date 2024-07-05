if peattributes.no_security == true and peattributes.ismsil == true and mp.getfilesize() < 2000000 then
  return mp.INFECTED
end
return mp.CLEAN
