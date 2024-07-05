if mp.getfilesize() <= 80 then
  return mp.INFECTED
else
  return mp.LOWFI
end
return mp.CLEAN
