if peattributes.no_security and mp.getfilesize() < 655360 and mp.getfilesize() > 70000 then
  return mp.INFECTED
end
return mp.CLEAN
