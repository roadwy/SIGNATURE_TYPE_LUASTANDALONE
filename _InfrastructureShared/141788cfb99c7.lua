if peattributes.isdll == true and mp.getfilesize() < 150000 then
  return mp.INFECTED
end
return mp.CLEAN
