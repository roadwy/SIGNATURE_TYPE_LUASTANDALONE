if mp.getfilesize() ~= nil and mp.getfilesize() > 20971520 then
  return mp.CLEAN
end
return mp.INFECTED
