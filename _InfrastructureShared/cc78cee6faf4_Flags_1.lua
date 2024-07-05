if peattributes.packed or pehdr.NumberOfSections > 4 and pesecs[4].Name == ".bss" and pesecs[5].Name == ".idata" or pesecs[5].Name == ".bss" and pesecs[6].Name == ".idata" then
  return mp.INFECTED
end
mp.changedetectionname(805306391)
return mp.SUSPICIOUS
