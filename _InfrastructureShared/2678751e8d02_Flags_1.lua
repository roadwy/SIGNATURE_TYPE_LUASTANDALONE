if pehdr.SizeOfImage > 2031616 and pehdr.SizeOfImage < 2097152 then
  mp.changedetectionname(805306373)
  return mp.INFECTED
end
return mp.SUSPICIOUS
