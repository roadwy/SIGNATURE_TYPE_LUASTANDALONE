if peattributes.isdll and peattributes.no_security and mp.getfilesize() > 671744 and mp.getfilesize() < 680000 then
  return mp.INFECTED
end
return mp.CLEAN
