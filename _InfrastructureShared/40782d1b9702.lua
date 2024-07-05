if mp.getfilesize() >= 32768 and mp.getfilesize() <= 720896 and pesecs[4].Name == ".text" and pesecs[1].Name == ".text" then
  return mp.INFECTED
end
return mp.CLEAN
