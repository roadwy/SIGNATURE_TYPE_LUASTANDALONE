if pehdr.NumberOfSections == 5 and pehdr.SizeOfImage >= 20480 and pehdr.SizeOfImage <= 131072 and mp.getfilesize() >= 1048576 then
  return mp.INFECTED
end
return mp.CLEAN
