if mp.getfilesize() > 1007616 and mp.getfilesize() < 1044480 then
  return mp.INFECTED
end
return mp.CLEAN
