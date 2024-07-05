if peattributes.no_security and peattributes.ismsil == true and mp.getfilesize() >= 4096 and mp.getfilesize() <= 12288 then
  return mp.INFECTED
end
return mp.CLEAN
