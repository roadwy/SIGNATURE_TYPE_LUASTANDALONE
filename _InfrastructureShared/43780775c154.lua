if peattributes.ismsil == true and mp.getfilesize() >= 42496 and mp.getfilesize() <= 42960 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
