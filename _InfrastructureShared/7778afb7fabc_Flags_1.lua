if pehdr.SizeOfImage >= 327680 and pehdr.SizeOfImage <= 983040 or pehdr.SizeOfImage >= 2097152 and pehdr.SizeOfImage <= 3473408 then
  return mp.INFECTED
end
mp.changedetectionname(805306390)
return mp.SUSPICIOUS
