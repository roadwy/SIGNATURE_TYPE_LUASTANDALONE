if peattributes.no_security and (mp.getfilesize() == 151552 or mp.getfilesize() == 147456) then
  return mp.INFECTED
end
return mp.CLEAN
