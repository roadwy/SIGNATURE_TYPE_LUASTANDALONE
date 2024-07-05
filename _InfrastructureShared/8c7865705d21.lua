if peattributes.isdll == true and mp.getfilesize() < 78000 then
  return mp.INFECTED
end
return mp.CLEAN
