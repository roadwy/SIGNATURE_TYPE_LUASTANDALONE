if not peattributes.hasappendeddata then
  return mp.CLEAN
end
if mp.getfilesize() < 150000 then
  return mp.CLEAN
end
if mp.getfilesize() > 200000 then
  return mp.CLEAN
end
if epcode[1] == 137 and epcode[2] == 224 and epcode[3] == 163 and epcode[8] == 137 and epcode[9] == 232 then
  return mp.INFECTED
end
return mp.CLEAN
