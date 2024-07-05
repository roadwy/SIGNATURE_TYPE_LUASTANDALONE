if peattributes.ismsil == true and pesecs[2].Name == ".sdata" and mp.getfilesize() > 153600 and mp.getfilesize() < 300000 then
  return mp.INFECTED
end
return mp.CLEAN
