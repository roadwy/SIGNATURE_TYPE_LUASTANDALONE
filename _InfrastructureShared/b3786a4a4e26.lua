if mp.getfilesize() >= 6488064 and mp.getfilesize() <= 6619136 then
  return mp.INFECTED
end
return mp.CLEAN
