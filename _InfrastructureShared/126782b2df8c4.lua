if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() < 5700 then
  return mp.INFECTED
end
return mp.CLEAN
