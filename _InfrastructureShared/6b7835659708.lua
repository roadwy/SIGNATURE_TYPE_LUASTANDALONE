if mp.getfilesize() >= 196608 and mp.getfilesize() <= 327680 and peattributes.isdll == true and peattributes.hasexports == true then
  return mp.INFECTED
end
return mp.CLEAN
