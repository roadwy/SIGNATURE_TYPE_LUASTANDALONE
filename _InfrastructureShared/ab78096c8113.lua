if peattributes.isexe and peattributes.ismsil == false and mp.getfilesize() < 15000 then
  return mp.INFECTED
end
return mp.CLEAN
