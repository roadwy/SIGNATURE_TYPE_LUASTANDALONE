if mp.getfilesize() >= 118784 and mp.getfilesize() <= 122880 and pehdr.NumberOfSections == 6 and pesecs[4].Name == ".crt1" then
  return mp.INFECTED
end
return mp.CLEAN
