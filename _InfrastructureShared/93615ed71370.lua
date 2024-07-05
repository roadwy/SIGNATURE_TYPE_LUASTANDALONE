if peattributes.no_security and peattributes.ismsil == true and mp.getfilesize() > 524288 and mp.getfilesize() < 851968 then
  return mp.INFECTED
end
return mp.CLEAN
