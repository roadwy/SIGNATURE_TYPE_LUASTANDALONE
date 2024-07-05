if peattributes.no_security == true and mp.getfilesize() >= 77824 and mp.getfilesize() <= 90112 and peattributes.isdll and peattributes.hasexports then
  return mp.INFECTED
end
return mp.CLEAN
