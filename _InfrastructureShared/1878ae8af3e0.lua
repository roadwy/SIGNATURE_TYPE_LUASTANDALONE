if peattributes.ismsil == true and peattributes.isexe == true and peattributes.no_security == true and mp.getfilesize() < 113000 then
  return mp.INFECTED
end
return mp.CLEAN
