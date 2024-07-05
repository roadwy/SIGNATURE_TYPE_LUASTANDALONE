if mp.getfilesize() < 102400 then
  return mp.INFECTED
end
return mp.CLEAN
