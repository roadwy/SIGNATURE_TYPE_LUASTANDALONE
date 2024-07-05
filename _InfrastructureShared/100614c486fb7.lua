if peattributes.no_security == true and mp.getfilesize() >= 548864 and mp.getfilesize() <= 585728 then
  return mp.INFECTED
end
return mp.CLEAN
