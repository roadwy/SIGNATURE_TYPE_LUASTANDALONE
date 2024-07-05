if mp.getfilesize() >= 720896 and mp.getfilesize() <= 917504 and peattributes.ismsil == true and peattributes.isdll == false and peattributes.hasexports == false then
  return mp.INFECTED
end
return mp.CLEAN
