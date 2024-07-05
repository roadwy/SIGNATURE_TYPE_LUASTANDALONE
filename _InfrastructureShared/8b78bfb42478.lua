if peattributes.amd64_image and mp.get_mpattribute("pea_isexe") then
  return mp.INFECTED
end
return mp.CLEAN
