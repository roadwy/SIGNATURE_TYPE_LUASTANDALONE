if peattributes.ismsil == true and peattributes.isexe == true and mp.getfilesize() < 5048000 then
  return mp.INFECTED
end
return mp.CLEAN
