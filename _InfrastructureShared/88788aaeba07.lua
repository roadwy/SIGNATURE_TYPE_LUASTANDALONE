if peattributes.isdll == true and mp.getfilesize() < 245762 then
  return mp.INFECTED
end
return mp.CLEAN
