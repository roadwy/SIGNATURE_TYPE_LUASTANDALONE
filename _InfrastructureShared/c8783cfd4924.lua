if peattributes.isdll == true and mp.getfilesize() < 62000 then
  return mp.INFECTED
end
return mp.CLEAN
