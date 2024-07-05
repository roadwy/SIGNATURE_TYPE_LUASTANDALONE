if mp.getfilesize() ~= nil and mp.getfilesize() <= 3072000 and pesecs[1].Name == "UPX0" then
  return mp.INFECTED
end
return mp.CLEAN
