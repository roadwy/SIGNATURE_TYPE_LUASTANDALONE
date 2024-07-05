if peattributes.no_security == false and mp.getfilesize() <= 589824 and mp.getfilesize() >= 458752 then
  return mp.INFECTED
end
return mp.CLEAN
