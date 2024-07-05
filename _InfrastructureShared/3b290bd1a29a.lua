if mp.getfilesize() > 30720 and mp.getfilesize() < 849920 then
  return mp.INFECTED
end
return mp.CLEAN
