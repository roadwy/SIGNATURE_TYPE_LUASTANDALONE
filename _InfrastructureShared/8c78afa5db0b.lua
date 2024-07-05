if peattributes.isdll == true and mp.get_mpattribute("NID:Win64/IcedId.PAH!MTB") and mp.getfilesize() > 1572864 and mp.getfilesize() < 1638400 then
  return mp.INFECTED
end
return mp.CLEAN
