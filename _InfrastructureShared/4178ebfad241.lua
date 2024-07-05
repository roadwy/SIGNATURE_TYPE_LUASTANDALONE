if mp.getfilesize() > 131072 and mp.getfilesize() < 421888 then
  return mp.INFECTED
end
return mp.CLEAN
