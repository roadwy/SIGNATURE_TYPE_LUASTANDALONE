if mp.getfilesize() < 200 then
  return mp.INFECTED
end
return mp.CLEAN
