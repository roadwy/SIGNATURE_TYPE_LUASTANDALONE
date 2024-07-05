if mp.getfilesize() < 197000 then
  return mp.SUSPICIOUS
end
return mp.CLEAN
