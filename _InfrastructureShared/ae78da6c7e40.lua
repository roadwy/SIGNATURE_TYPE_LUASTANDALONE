if peattributes.isdll == true and mp.getfilesize() < 204800 then
  return mp.INFECTED
end
return mp.CLEAN
