if mp.bitand(pesecs[pehdr.NumberOfSections].Characteristics, 536870912) == 536870912 then
  return mp.INFECTED
end
return mp.CLEAN
