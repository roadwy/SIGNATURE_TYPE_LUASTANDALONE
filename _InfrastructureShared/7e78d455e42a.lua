if mp.get_mpattribute("pea_no_security") and mp.getfilesize() < 172032 then
  return mp.INFECTED
end
return mp.CLEAN
