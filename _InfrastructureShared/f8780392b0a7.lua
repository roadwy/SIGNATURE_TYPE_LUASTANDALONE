if mp.get_mpattribute("pea_no_security") and mp.getfilesize() < 65280 then
  return mp.INFECTED
end
return mp.CLEAN
