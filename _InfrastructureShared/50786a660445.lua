if peattributes.ismsil == false and peattributes.no_security == true and peattributes.isdll == false and mp.getfilesize() < 157000 then
  return mp.INFECTED
end
return mp.CLEAN
