if peattributes.ismsil == true and peattributes.isexe == true and mp.getfilesize() < 8705 then
  return mp.INFECTED
end
return mp.CLEAN
