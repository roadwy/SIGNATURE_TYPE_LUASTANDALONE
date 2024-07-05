if mp.getfilesize() < 120000 then
  return mp.SUSPICIOUS
end
return mp.CLEAN
