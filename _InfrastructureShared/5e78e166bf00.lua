if mp.getfilesize() >= 1500000 and mp.getfilesize() <= 2000000 and pesecs[1].Name == "UPX0" or mp.getfilesize() >= 3300000 and mp.getfilesize() <= 4000000 then
  return mp.INFECTED
end
return mp.CLEAN
