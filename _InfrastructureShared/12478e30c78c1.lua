if mp.getfilesize() >= 4096 and mp.getfilesize() <= 16384 and peattributes.ismsil == true and peattributes.isdll == true and peattributes.hasexports == false then
  return mp.INFECTED
end
return mp.CLEAN
