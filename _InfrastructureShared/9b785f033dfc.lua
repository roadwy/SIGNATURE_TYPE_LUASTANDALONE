if peattributes.no_security and mp.getfilesize() < 652960 then
  return mp.INFECTED
end
return mp.CLEAN
