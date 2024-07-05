if mp.getfilesize() >= 66816 and mp.getfilesize() <= 679936 then
  return mp.INFECTED
end
return mp.CLEAN
