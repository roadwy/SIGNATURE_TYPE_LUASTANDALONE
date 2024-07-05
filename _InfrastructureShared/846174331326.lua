if peattributes.ismsil == true and peattributes.no_security == true and mp.get_mpattribute("pea_isdll") then
  return mp.INFECTED
end
return mp.CLEAN
