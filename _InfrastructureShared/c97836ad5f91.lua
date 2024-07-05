if mp.getfilesize() > 301989888 and mp.getfilesize() < 352321536 then
  return mp.INFECTED
end
return mp.CLEAN
