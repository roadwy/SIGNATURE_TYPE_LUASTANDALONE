if mp.getfilesize() > 16777216 then
  return mp.CLEAN
end
return mp.INFECTED
