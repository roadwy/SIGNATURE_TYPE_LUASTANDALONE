if pehdr.SizeOfImage >= 819200 and pehdr.SizeOfImage < 827392 then
  return mp.INFECTED
end
mp.changedetectionname(805306376)
return mp.SUSPICIOUS
