if peattributes.isdll and peattributes.no_security and mp.getfilesize() > 589824 and mp.getfilesize() < 655360 then
  return mp.INFECTED
end
return mp.CLEAN
