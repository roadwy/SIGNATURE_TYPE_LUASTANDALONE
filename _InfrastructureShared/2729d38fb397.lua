if mp.get_mpattribute("PACKED_WITH:(Base64)") and mp.getfilename():match(".dll") then
  return mp.INFECTED
end
return mp.CLEAN
