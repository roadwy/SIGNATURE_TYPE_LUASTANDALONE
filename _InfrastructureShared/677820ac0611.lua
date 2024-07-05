if mp.getfilesize() > 460800 or mp.getfilesize() < 768000 then
  return mp.CLEAN
end
return mp.INFECTED
