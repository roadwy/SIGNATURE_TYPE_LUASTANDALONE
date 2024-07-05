if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() >= 8192 and mp.getfilesize() <= 12288 then
  return mp.INFECTED
end
return mp.CLEAN
