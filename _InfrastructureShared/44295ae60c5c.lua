if mp.getfilesize() < 9300 then
  return mp.INFECTED
end
return mp.CLEAN
