if peattributes.isdll == false and mp.getfilesize() < 1050000 then
  return mp.INFECTED
end
return mp.CLEAN
