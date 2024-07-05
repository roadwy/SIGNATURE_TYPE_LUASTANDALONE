if pehdr.NumberOfSections > 4 and pevars.epsec == pehdr.NumberOfSections and pesecs[pehdr.NumberOfSections].Name == "" and mp.bitand(pesecs[pehdr.NumberOfSections].Characteristics, 3758096384) == 3221225472 then
  return mp.INFECTED
end
return mp.CLEAN
