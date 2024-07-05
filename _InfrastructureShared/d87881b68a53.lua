if peattributes.isdll and peattributes.no_security and mp.getfilesize() > 663552 and mp.getfilesize() < 671744 then
  return mp.INFECTED
end
return mp.CLEAN
