if mp.getfilesize() < 229376 then
  return mp.INFECTED
end
return mp.CLEAN
