if peattributes.isexe and peattributes.no_security == false and peattributes.ismsil == false and mp.getfilesize() >= 1126400 and mp.getfilesize() <= 1945600 then
  return mp.INFECTED
end
return mp.CLEAN
