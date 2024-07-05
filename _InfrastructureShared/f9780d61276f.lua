if mp.getfilesize() >= 851968 and mp.getfilesize() <= 917504 then
  return mp.INFECTED
end
return mp.CLEAN
