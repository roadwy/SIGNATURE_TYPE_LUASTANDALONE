if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() <= 8192 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
