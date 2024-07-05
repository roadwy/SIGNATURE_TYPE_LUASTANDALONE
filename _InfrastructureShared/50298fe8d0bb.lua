if mp.getfilesize() <= 54272 and mp.getfilesize() >= 46080 then
  return mp.INFECTED
end
return mp.CLEAN
