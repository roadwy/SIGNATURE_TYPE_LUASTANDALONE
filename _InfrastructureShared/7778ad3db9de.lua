if peattributes.no_security == false and mp.getfilesize() > 589824 and mp.getfilesize() < 655360 then
  return mp.INFECTED
end
return mp.LOWFI
