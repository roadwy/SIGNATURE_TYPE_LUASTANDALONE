if peattributes.ismsil == true and peattributes.isexe == true and mp.getfilesize() < 74241 then
  return mp.INFECTED
end
return mp.CLEAN
