if mp.getfilesize() >= 327680 and mp.getfilesize() <= 360448 and mp.get_mpattribute("NID:Win32/IcedId.PK!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
