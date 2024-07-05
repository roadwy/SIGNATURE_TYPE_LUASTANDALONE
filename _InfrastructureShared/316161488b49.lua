if mp.getfilesize() >= 32768 and mp.getfilesize() <= 720896 then
  return mp.INFECTED
end
return mp.CLEAN
