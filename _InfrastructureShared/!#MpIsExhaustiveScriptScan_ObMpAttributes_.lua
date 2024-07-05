if mp.getfilesize() > 2097152 then
  return mp.CLEAN
end
if mp.BMSearchFile(0, 4096, "<job\144\000") == -1 then
  return mp.INFECTED
end
return mp.CLEAN
