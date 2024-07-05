if mp.getfilesize() <= 256 and mp.get_mpattribute("InEmail") then
  return mp.INFECTED
end
return mp.CLEAN
