if peattributes.ismsil == true and peattributes.isexe == true and mp.get_mpattribute("InEmail") then
  return mp.INFECTED
end
return mp.CLEAN
