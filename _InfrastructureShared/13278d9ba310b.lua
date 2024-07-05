if mp.getfilesize() < 16777216 then
  return mp.INFECTED
end
return mp.CLEAN
