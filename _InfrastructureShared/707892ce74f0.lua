if peattributes.isdll == true and peattributes.ismsil == true and mp.getfilesize() == 7168 then
  return mp.INFECTED
end
return mp.CLEAN
