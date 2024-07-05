if peattributes.isdll == true and mp.getfilesize() < 49000 then
  return mp.INFECTED
end
return mp.CLEAN
