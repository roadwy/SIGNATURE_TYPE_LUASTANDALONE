if mp.getfilesize() <= 769832 and mp.getfilesize() >= 765736 then
  return mp.INFECTED
end
return mp.CLEAN
