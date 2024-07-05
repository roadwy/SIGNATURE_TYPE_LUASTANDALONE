if mp.getfilesize() >= 262144 and mp.getfilesize() <= 458752 and peattributes.isdll == true and peattributes.hasexports == true then
  return mp.INFECTED
end
return mp.CLEAN
