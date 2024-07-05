if mp.getfilesize() > 144000 and mp.getfilesize() < 154000 then
  return mp.INFECTED
end
return mp.CLEAN
