if mp.getfilesize() >= 151552 and mp.getfilesize() <= 589824 then
  return mp.INFECTED
end
return mp.CLEAN
