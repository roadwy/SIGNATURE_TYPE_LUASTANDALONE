if mp.getfilesize() > 40960 or pehdr.NumberOfSections > 4 then
  return mp.LOWFI
end
return mp.INFECTED
