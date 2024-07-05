if peattributes.no_security == true and mp.getfilesize() >= 589824 and mp.getfilesize() <= 630784 then
  return mp.INFECTED
end
return mp.CLEAN
