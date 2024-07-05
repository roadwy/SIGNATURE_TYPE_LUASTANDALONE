if mp.getfilesize() > 102400 then
  return mp.CLEAN
end
return mp.INFECTED
