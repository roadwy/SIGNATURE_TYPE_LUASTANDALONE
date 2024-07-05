if peattributes.isdll == true and mp.getfilesize() < 42000 then
  return mp.INFECTED
end
return mp.CLEAN
