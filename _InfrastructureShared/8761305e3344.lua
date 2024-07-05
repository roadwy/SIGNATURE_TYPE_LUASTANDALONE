if peattributes.no_security and peattributes.ismsil == true and mp.getfilesize() > 655360 and mp.getfilesize() < 720896 then
  return mp.INFECTED
end
return mp.CLEAN
