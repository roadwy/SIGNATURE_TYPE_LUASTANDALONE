if mp.getfilesize() > 35000 or mp.getfilesize() < 25000 then
  return mp.CLEAN
end
if pesecs[1].SizeOfRawData ~= 1536 then
  return mp.CLEAN
end
return mp.INFECTED
