if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() <= 983040 and mp.getfilesize() >= 393216 then
  return mp.INFECTED
end
return mp.CLEAN
