if peattributes.isdll and mp.getfilesize() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN
