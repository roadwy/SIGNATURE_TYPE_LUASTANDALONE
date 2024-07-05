if peattributes.isdll and mp.getfilesize() < 338000 then
  return mp.INFECTED
end
return mp.CLEAN
