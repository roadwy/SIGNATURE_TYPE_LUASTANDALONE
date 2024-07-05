if peattributes.ismsil == true and peattributes.no_security == false and mp.getfilesize() <= 40000000 then
  return mp.INFECTED
end
return mp.CLEAN
