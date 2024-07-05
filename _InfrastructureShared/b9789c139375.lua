if mp.getfilesize() > 28672 and mp.getfilesize() < 40960 and pehdr.NumberOfSections == 1 and pesecs[pevars.epsec].Name == ".text" then
  return mp.INFECTED
end
return mp.CLEAN
