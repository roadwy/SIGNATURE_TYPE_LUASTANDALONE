if mp.get_mpattribute("pea_no_security") and mp.getfilesize() < 303104 then
  return mp.INFECTED
end
return mp.CLEAN
