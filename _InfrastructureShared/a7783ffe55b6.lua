if peattributes.ismsil == true and peattributes.isexe == true and mp.getfilesize() <= 1297200 then
  return mp.INFECTED
end
return mp.CLEAN
