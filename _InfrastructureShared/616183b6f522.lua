if peattributes.no_security == true and mp.getfilesize() < 543745 then
  return mp.INFECTED
end
return mp.CLEAN
