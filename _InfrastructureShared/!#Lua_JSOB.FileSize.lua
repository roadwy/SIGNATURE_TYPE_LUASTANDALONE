if mp.getfilesize() > 550000 and mp.getfilesize() < 600000 then
  return mp.INFECTED
end
if mp.getfilesize() > 120000 and mp.getfilesize() < 300000 then
  return mp.INFECTED
end
if mp.getfilesize() > 40000 and mp.getfilesize() < 70000 then
  return mp.INFECTED
end
if mp.getfilesize() > 10000 and mp.getfilesize() < 15000 then
  return mp.INFECTED
end
if mp.getfilesize() > 7600 and mp.getfilesize() < 7700 then
  return mp.INFECTED
end
if mp.getfilesize() > 4100 and mp.getfilesize() < 4300 then
  return mp.INFECTED
end
return mp.CLEAN
