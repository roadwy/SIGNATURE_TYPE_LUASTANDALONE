if mp.getfilesize() > 61440 then
  return mp.CLEAN
end
return mp.INFECTED
