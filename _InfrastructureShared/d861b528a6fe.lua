if mp.getfilesize() > 458752 and mp.getfilesize() < 786432 then
  return mp.INFECTED
end
return mp.CLEAN
