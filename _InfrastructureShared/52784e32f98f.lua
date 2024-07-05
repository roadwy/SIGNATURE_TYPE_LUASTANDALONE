if mp.getfilesize() < 51000 then
  return mp.INFECTED
end
return mp.CLEAN
