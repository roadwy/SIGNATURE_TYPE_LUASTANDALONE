if peattributes.isdll == true and peattributes.hasexports == true and mp.getfilesize() < 972234 then
  return mp.INFECTED
end
return mp.CLEAN
