if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_security") then
  return mp.INFECTED
end
return mp.CLEAN
