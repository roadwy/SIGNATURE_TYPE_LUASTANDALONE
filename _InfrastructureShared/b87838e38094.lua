if pesecs[pehdr.NumberOfSections].VirtualSize == 8192 and mp.bitand(pesecs[pehdr.NumberOfSections].Characteristics, 3221225472) == 3221225472 and mp.bitand(pesecs[pehdr.NumberOfSections - 1].Characteristics, 3221225472) == 3221225472 then
  return mp.INFECTED
end
return mp.LOWFI
