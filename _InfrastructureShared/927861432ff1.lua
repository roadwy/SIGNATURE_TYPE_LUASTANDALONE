if pehdr.SizeOfImage == 151552 then
  mp.changedetectionname(805306388)
  return mp.INFECTED
end
if pehdr.SizeOfImage == 86016 then
  mp.changedetectionname(805306389)
  return mp.INFECTED
end
return mp.SUSPICIOUS
