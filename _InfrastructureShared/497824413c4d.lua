if mp.getfilesize() < 91000 then
  return mp.INFECTED
end
return mp.CLEAN
