if mp.get_mpattribute("pea_isdll") and mp.get_mpattribute("pea_amd64_image") then
  return mp.INFECTED
end
return mp.CLEAN
