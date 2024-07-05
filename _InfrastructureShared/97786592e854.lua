if mp.getfilesize() < 2424832 then
  return mp.INFECTED
end
return mp.CLEAN
