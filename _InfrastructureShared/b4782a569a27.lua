if mp.getfilesize() < 47872 then
  return mp.INFECTED
end
return mp.CLEAN
