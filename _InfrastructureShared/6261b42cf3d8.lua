if peattributes.no_security == true and mp.getfilesize() >= 1669632 and mp.getfilesize() <= 1677824 then
  return mp.INFECTED
end
return mp.CLEAN
