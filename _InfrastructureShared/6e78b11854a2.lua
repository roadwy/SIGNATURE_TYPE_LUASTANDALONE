if peattributes.isdll == true and peattributes.ismsil == true and mp.getfilesize() < 75000 then
  return mp.INFECTED
end
return mp.CLEAN
