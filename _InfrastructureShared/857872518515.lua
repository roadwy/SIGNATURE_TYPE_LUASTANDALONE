if mp.getfilesize() < 3048000 then
  return mp.INFECTED
end
return mp.CLEAN
