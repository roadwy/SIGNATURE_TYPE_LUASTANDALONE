if peattributes.isexe == true and peattributes.ismsil == true and mp.getfilesize() < 10192 then
  return mp.INFECTED
end
return mp.CLEAN
