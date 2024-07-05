if peattributes.no_security and mp.getfilesize() < 2097152 then
  return mp.INFECTED
end
return mp.CLEAN
