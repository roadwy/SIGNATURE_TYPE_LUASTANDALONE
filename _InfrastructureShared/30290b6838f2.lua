if mp.getfilesize() ~= nil and string.find(string.lower(mp.getfilename()), ".php") and mp.getfilesize() > 40000 and mp.getfilesize() < 48000 then
  return mp.INFECTED
end
return mp.CLEAN
