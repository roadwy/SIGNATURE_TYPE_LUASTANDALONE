if mp.getfilesize() < 78848 then
  return mp.INFECTED
end
return mp.CLEAN
