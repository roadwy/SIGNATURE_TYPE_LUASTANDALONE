if peattributes.ismsil and mp.get_mpattribute("HSTR:MSIL/Confuser") then
  return mp.INFECTED
end
return mp.CLEAN
