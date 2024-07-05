if mp.getfilesize() ~= nil and mp.getfilesize() > 50 and mp.getfilesize() < 200 then
  return mp.INFECTED
end
return mp.CLEAN
