if mp.getfilesize() >= 49152 and mp.getfilesize() <= 57344 and mp.get_mpattribute("NID:Win64/Atosev.PA!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
