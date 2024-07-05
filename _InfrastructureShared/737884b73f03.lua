if peattributes.isdll == false and peattributes.no_security == true and mp.getfilesize() < 2446472 then
  return mp.INFECTED
end
return mp.CLEAN
