if mp.getfilesize() < 675000 and mp.getfilesize() > 655000 then
  return mp.INFECTED
end
return mp.CLEAN
