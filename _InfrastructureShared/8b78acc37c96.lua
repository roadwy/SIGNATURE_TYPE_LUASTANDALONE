if peattributes.isdll == true and peattributes.ismsil == true and mp.getfilesize() == 8192 then
  return mp.INFECTED
end
return mp.CLEAN
