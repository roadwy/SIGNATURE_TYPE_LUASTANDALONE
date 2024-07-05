if mp.getfilesize() <= 12288 then
  return mp.INFECTED
end
return mp.CLEAN
