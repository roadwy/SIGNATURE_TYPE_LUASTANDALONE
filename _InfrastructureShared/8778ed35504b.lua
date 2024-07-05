if mp.getfilesize() >= 196608 and mp.getfilesize() <= 393216 and peattributes.isdll == true and peattributes.hasexports == true then
  return mp.INFECTED
end
return mp.CLEAN
