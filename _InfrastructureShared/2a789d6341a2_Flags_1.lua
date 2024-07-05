if mp.getfilesize() == 147456 and pehdr.NumberOfSections == 5 and (pesecs[3].VirtualSize == 104608 or pesecs[3].VirtualSize == 104672) and pesecs[4].VirtualSize == 26488 and pesecs[2].VirtualSize > 33024 and pesecs[2].VirtualSize < 33280 then
  return mp.INFECTED
end
return mp.CLEAN
