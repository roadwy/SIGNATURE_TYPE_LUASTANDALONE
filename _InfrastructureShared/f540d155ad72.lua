if peattributes.isvbnative == true and peattributes.no_security == true and mp.getfilesize() < 323584 then
  return mp.INFECTED
end
return mp.CLEAN
