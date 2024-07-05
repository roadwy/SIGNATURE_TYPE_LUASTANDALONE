if mp.getfilesize() >= 53248 and mp.getfilesize() <= 57344 then
  return mp.INFECTED
end
return mp.CLEAN
