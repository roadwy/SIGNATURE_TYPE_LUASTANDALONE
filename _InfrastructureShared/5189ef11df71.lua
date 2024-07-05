if mp.crc32(-1, epcode, 1, 9) == 2556408724 and pevars.epsec == pehdr.NumberOfSections then
  return mp.INFECTED
else
  return mp.LOWFI
end
return mp.CLEAN
