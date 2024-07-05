if peattributes.ismsil == true and mp.get_mpattribute("pea_headerchecksum0") and mp.get_mpattribute("pea_amd64_image") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
