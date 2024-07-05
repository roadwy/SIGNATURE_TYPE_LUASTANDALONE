if peattributes.no_security and mp.getfilesize() < 458752 then
  return mp.INFECTED
end
return mp.CLEAN
