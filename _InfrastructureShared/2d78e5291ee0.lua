if mp.getfilesize() < 2064000 then
  return mp.INFECTED
end
return mp.CLEAN
