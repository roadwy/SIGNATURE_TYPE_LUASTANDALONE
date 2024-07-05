if mp.getfilesize() < 851968 then
  return mp.INFECTED
end
return mp.CLEAN
