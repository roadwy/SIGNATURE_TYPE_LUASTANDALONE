if peattributes.no_security == true and mp.getfilesize() >= 192512 and mp.getfilesize() <= 229376 and peattributes.isdll and peattributes.hasexports then
  return mp.INFECTED
end
return mp.CLEAN
