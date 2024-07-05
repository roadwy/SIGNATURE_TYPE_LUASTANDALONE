if pehdr.NumberOfSections == 4 and pesecs[pehdr.NumberOfSections].Name == "" and pesecs[pehdr.NumberOfSections].SizeOfRawData == 0 and mp.bitand(pesecs[pehdr.NumberOfSections].Characteristics, 3758096384) == 3758096384 then
  return mp.INFECTED
end
return mp.CLEAN
