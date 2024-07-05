if mp.getfilesize() ~= nil and string.find(string.lower(mp.getfilename()), ".php") and mp.getfilesize() > 1400 and mp.getfilesize() < 2200 then
  return mp.INFECTED
end
return mp.CLEAN
