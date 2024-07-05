if peattributes.ismsil and mp.get_mpattribute("pea_has_msilresources") and mp.get_mpattribute("pea_no_security") then
  return mp.INFECTED
end
return mp.CLEAN
