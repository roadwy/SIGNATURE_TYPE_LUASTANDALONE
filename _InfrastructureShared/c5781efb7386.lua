if peattributes.ismsil == true and peattributes.isdll == false and mp.getfilesize() < 5040000 then
  return mp.INFECTED
end
return mp.CLEAN
