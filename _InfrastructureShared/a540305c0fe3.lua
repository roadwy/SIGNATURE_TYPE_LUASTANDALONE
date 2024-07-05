if peattributes.ismsil == true and peattributes.isdll and mp.getfilesize() < 8192 then
  return mp.INFECTED
end
return mp.CLEAN
