if peattributes.ismsil == true and peattributes.isexe == true and mp.getfilesize() < 92673 then
  return mp.INFECTED
end
return mp.CLEAN
