if mp.getfilesize() <= 512 then
  return mp.INFECTED
else
  return mp.LOWFI
end
return mp.CLEAN
