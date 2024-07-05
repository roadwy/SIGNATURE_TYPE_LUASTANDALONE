if mp.getfilesize() > 5100 then
  return mp.INFECTED
end
return mp.CLEAN
