if mp.getfilesize() > 51200 then
  return mp.CLEAN
end
return mp.INFECTED
