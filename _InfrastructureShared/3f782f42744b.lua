if peattributes.isvbnative == true and mp.getfilesize() == 61440 then
  return mp.INFECTED
end
return mp.CLEAN
