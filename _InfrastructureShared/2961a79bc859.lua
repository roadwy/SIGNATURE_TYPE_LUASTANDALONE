if peattributes.ismsil == true and mp.getfilesize() > 458752 and mp.getfilesize() < 589824 then
  return mp.INFECTED
end
return mp.LOWFI
