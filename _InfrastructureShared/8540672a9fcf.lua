if mp.getfilesize() >= 147456 and mp.getfilesize() <= 184320 or mp.getfilesize() >= 217088 and mp.getfilesize() <= 262144 or mp.getfilesize() >= 131072 and mp.getfilesize() <= 135168 then
  return mp.INFECTED
end
return mp.LOWFI
