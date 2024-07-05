if peattributes.isexe and peattributes.no_security and mp.getfilesize() >= 458752 and mp.getfilesize() <= 483328 then
  return mp.INFECTED
end
return mp.LOWFI
