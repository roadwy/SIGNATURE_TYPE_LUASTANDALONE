if mp.getfilesize() >= 151552 and mp.getfilesize() <= 307200 then
  return mp.INFECTED
end
return mp.CLEAN
