if peattributes.no_security == true and mp.getfilesize() > 309603 and mp.getfilesize() < 683198 then
  return mp.INFECTED
end
return mp.CLEAN
