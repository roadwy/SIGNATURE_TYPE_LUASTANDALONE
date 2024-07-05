if peattributes.isdll and peattributes.hasexports and mp.getfilesize() < 10000 then
  return mp.INFECTED
end
return mp.CLEAN
