if mp.getfilesize() < 10024000 then
  return mp.INFECTED
end
return mp.CLEAN
