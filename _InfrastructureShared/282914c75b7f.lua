if mp.getfilesize() < 51200 then
  return mp.INFECTED
end
return mp.CLEAN
