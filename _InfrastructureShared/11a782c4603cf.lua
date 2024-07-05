if peattributes.ismsil == true and mp.getfilesize() < 10240 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
