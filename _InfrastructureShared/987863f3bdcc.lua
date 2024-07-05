if mp.getfilesize() > 393216 and mp.getfilesize() < 983040 then
  return mp.INFECTED
end
return mp.CLEAN
