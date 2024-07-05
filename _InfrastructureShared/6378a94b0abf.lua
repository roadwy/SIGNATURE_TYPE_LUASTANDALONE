if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_security") and mp.getfilesize() > 155648 and mp.getfilesize() < 163840 then
  return mp.INFECTED
end
return mp.CLEAN
