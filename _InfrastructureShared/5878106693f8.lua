if peattributes.no_security == true and mp.getfilesize() <= 393216 and mp.getfilesize() >= 327680 and pesecs[4].Name == ".py" then
  return mp.INFECTED
end
return mp.CLEAN
