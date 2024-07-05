if mp.getfilesize() < 65536 and mp.get_mpattribute("pea_no_security") then
  return mp.INFECTED
end
return mp.CLEAN
