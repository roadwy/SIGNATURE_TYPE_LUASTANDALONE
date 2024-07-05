if mp.getfilesize() < 102400 or mp.getfilesize() > 204800 or peattributes.isdll then
  return mp.CLEAN
end
return mp.INFECTED
