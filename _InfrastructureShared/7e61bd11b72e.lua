if mp.getfilesize() >= 4194304 then
  return mp.CLEAN
end
return mp.INFECTED
