if peattributes.isdll and mp.getfilesize() <= 819200 and mp.getfilesize() >= 614400 then
  return mp.INFECTED
end
return mp.CLEAN
