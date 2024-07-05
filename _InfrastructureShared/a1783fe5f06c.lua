if peattributes.isvbnative == true and mp.getfilesize() == 73728 then
  return mp.INFECTED
end
return mp.CLEAN
