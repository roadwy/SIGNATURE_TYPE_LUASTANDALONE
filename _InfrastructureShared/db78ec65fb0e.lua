if mp.get_mpattribute("pea_no_security") and mp.getfilesize() < 67108864 then
  return mp.INFECTED
end
return mp.CLEAN
