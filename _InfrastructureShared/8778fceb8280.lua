if peattributes.isdll == true and mp.getfilesize() > 2900 then
  return mp.INFECTED
end
return mp.CLEAN
