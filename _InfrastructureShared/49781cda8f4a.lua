if peattributes.no_security == true and mp.getfilesize() >= 458752 and mp.getfilesize() <= 491520 then
  return mp.INFECTED
end
return mp.CLEAN
