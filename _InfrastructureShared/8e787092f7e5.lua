if mp.get_mpattribute("pea_ismsil") and mp.get_mpattribute("pea_isdll") then
  return mp.INFECTED
end
return mp.CLEAN
