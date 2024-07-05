if mp.getfilesize() < 307200 then
  return mp.INFECTED
end
return mp.CLEAN
