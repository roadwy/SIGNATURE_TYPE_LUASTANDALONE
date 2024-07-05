if peattributes.no_security == true and mp.getfilesize() >= 1638400 and mp.getfilesize() <= 1769472 then
  return mp.INFECTED
end
return mp.LOWFI
