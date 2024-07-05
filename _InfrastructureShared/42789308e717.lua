if mp.getfilesize() >= 512000 then
  return mp.CLEAN
end
if pesecs[1].SizeOfRawData < 65536 then
  return mp.CLEAN
end
if peattributes.isvbnative == true then
  return mp.INFECTED
end
return mp.CLEAN
