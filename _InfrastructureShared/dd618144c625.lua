if peattributes.isdll and mp.getfilesize() > 800000 and mp.getfilesize() < 2000000 then
  return mp.INFECTED
end
return mp.CLEAN
