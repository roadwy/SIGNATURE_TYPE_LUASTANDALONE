if mp.get_mpattribute("pea_no_security") and mp.getfilesize() < 348160 then
  return mp.INFECTED
end
return mp.CLEAN
