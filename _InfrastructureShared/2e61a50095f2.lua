if peattributes.isdll and mp.getfilesize() > 2500000 and mp.getfilesize() < 3500000 then
  return mp.INFECTED
end
return mp.CLEAN
