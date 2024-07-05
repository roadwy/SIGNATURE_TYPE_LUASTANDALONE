if pehdr.NumberOfSections == 13 and mp.getfilesize() >= 5200000 and mp.getfilesize() <= 5850000 and pesecs[8].Name == ".idata" and pesecs[9].Name == ".tls" and pesecs[13].Name == ".reloc" then
  return mp.INFECTED
end
return mp.CLEAN
