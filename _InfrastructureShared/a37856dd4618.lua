if peattributes.no_security == true and mp.getfilesize() >= 519168 and mp.getfilesize() <= 589824 then
  return mp.INFECTED
end
return mp.CLEAN
