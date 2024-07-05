if mp.getfilesize() > 204800 then
  return mp.CLEAN
end
return mp.INFECTED
