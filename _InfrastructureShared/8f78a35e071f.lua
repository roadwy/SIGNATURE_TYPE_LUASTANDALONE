if peattributes.no_security and mp.getfilesize() < 300000 then
  return mp.INFECTED
end
return mp.CLEAN
