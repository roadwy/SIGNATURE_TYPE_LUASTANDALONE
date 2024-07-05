if mp.getfilesize() <= 10240 then
  return mp.INFECTED
end
return mp.CLEAN
