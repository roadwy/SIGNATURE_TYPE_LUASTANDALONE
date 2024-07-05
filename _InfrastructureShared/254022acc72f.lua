if peattributes.isdll and mp.get_mpattribute("RPF:UrsnifDLL") then
  if peattributes.amd64_image then
    mp.changedetectionname(805306417)
    return mp.INFECTED
  end
  return mp.INFECTED
end
return mp.CLEAN
