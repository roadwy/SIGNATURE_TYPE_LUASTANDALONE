if mp.get_mpattribute("PACKED_WITH:(ActiveMime)") or mp.get_mpattribute("PACKED_WITH:(Base64)") then
  return mp.INFECTED
end
return mp.LOWFI
